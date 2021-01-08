import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World on android studio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        --_counter;
                      });
                    }),
                //  https://app.pluralsight.com/library/courses/how-git-works/table-of-contents
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: RaisedButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
