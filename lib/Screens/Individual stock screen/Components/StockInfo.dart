import 'package:flutter/material.dart';

import 'Individual Stock Info Card.dart';
import 'Individual Stock Score Card.dart';

class StockInfo extends StatefulWidget {
  @override
  State<StockInfo> createState() => StockInfoState();
}

class StockInfoState extends State<StockInfo> {
  List<bool> isSelected = [true,false,false,false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleButtons(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("1 Day"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("5 Day"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("1 Month"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("6 Months"),
              ),
            ],
            onPressed: (int index){
              setState(() {
                for(int buttonIndex =0; buttonIndex < isSelected.length; buttonIndex++){
                  if(buttonIndex == index){
                    isSelected[buttonIndex] = true;
                  }else{
                    isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            isSelected: isSelected
        ),
        SizedBox(height:20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StockPriceCard(
              stockTicker: "AAPL",
              companyName: "Apple Corporation",
              price: "149.00",
            ),
            SizedBox(height: 10,),
            StockScoreCard(
              bullOrBear: "Bear",
              score:"-40"
            )

          ],
        ),

      ],
    );

  }

}