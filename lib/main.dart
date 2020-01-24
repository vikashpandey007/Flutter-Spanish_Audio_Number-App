
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

main() {
  runApp(Spanishnumber());
}
class Spanishnumber extends StatefulWidget {
  @override
  _SpanishnumberState createState() => _SpanishnumberState();
}

class _SpanishnumberState extends State<Spanishnumber> {
   AudioCache player = AudioCache();
    // or as a local variable

    Widget costombotton(text, color) {
    return  MaterialButton(
        height: 90,
        minWidth: 180,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 8.0,
        color: color,
        highlightColor: Colors.white,
        onPressed: () {
         playsound(text);
                 },
                 child: Text(text, style: TextStyle(fontSize: 20)),
               );
             }
             
                    
           @override
           Widget build(BuildContext context) {
             return MaterialApp(
               debugShowCheckedModeBanner: false,
               title: "spanish number",
               theme: ThemeData.dark(),
               home: Scaffold(
                //  backgroundColor: Colors.white,
                 appBar: AppBar(
                     backgroundColor: Colors.yellowAccent[50],
                     title: Text(
                       "SPANISH NUMBER",
                       style: TextStyle(color: Colors.white),
                     )),
                     body:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                         children: <Widget>[
                           Image(
                             height: 150,
                             width: 150,
                             image: AssetImage("assets/music.jpg"),
                           ),
                            Image(
                             height: 100,
                             width: 100,
                             image: AssetImage("assets/song.png"),
                           ),
                           SizedBox(height: 10,),
                          Row(children: <Widget>[
                            costombotton("one", Colors.pink[200]),
                            Padding(padding: EdgeInsets.all(10),),
                             costombotton("two", Colors.green),
                          ],),
                          SizedBox(height: 10,),
         
                          Row(children: <Widget>[
                               costombotton("three", Colors.blue),
                                 Padding(padding: EdgeInsets.all(10),),
                                  costombotton("four", Colors.orange),
                          ],),
                               SizedBox(height: 10,),
                           Row(children: <Widget>[
                               costombotton("five", Colors.pink),
                                 Padding(padding: EdgeInsets.all(10),),
                                  costombotton("six", Colors.green[200]),
                          ],),
                             SizedBox(height: 10,),
                           Row(children: <Widget>[
                               costombotton("seven", Colors.cyan),
                                 Padding(padding: EdgeInsets.all(10),),
                                  costombotton("eight", Colors.purple[200]),
                          ],),
                             SizedBox(height: 10,),
                           Row(children: <Widget>[
                               costombotton("nine", Colors.amber),
                                 Padding(padding: EdgeInsets.all(10),),
                                  costombotton("ten", Colors.blueGrey),
                          ],),
                         ],
                     ),
                      )
         
             )
           );
         }
         
           void playsound(String text) {
             switch (text) {
      case "one":
      player.play("one.wav");
        
        break;
         case "two":
      player.play("two.wav");
        
        break;
         case "three":
      player.play("three.wav");
        
        break;
         case "four":
      player.play("four.wav");
        
        break;
         case "one":
      player.play("one.wav");
        
        break;
         case "five":
      player.play("five.wav");
        
        break;
         case "six":
      player.play("six.wav");
        
        break;
         case "seven":
      player.play("seven.wav");
        
        break;
         case "eight":
      player.play("eight.wav");
        
        break;
         case "nine":
      player.play("nine.wav");
        
        break;
         case "ten":
      player.play("ten.wav");
        
        break;
      
    }
           }
}