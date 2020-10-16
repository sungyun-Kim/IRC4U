import 'package:flutter/material.dart';

bool value = false;

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
    theme: ThemeData.dark(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
  
}

class _State extends State<MyApp>{

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
        
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[

              new CheckboxListTile(
                
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Hello World'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Subtitle'),
                  secondary: new Icon(Icons.access_time_sharp),
                  activeColor: Colors.red,
                  
              ),
              new Text("h"),
            ],
          ),
        ),
      ),
    );
  }
}