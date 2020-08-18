import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: SingleChildScrollView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              child: Image(image: AssetImage('assets/cat.jpg')),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Cat in the Garden',
                        style: TextStyle(fontSize: 36),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet mauris placerat nisl feugiat, vel posuere purus ultrices. Aliquam rutrum sagittis ligula. Aliquam sodales nibh eget dignissim consequat. Nulla interdum ipsum id laoreet ultricies. Donec erat sapien, congue ac sagittis condimentum, gravida sit amet purus. Phasellus sed elementum nibh. Duis consectetur odio vel egestas fringilla. Vestibulum tempus orci ac blandit sagittis. Phasellus sollicitudin sit amet neque non suscipit. Pellentesque sed ipsum blandit, cursus risus tincidunt, dictum lacus. Aliquam ex lectus, placerat ac diam eu, mattis hendrerit nisi. Ut et justo at libero fermentum iaculis. Donec bibendum quam massa, eu vulputate erat pulvinar eget. Quisque lacinia felis in faucibus varius. Duis ac tincidunt elit. Nam nisl nunc, aliquam id tellus nec, pretium tincidunt ipsum. Aliquam dui sem, consequat et consectetur quis, dictum fermentum mi. Donec tempus mollis iaculis. Fusce pulvinar mattis libero, ac venenatis nisl aliquam nec. Donec bibendum maximus ipsum, a mattis metus egestas interdum. Quisque suscipit consequat odio, in efficitur sapien ullamcorper ut. Donec vulputate ex nec est pulvinar luctus. Nulla in venenatis augue. Nulla facilisi. Suspendisse semper, dui vitae lacinia consequat, dui ex tincidunt nibh, et aliquam neque turpis ac dui. Suspendisse egestas turpis in sapien elementum, commodo pharetra orci mollis. Aliquam laoreet mauris a magna ultricies elementum nec sed augue. Nullam sodales maximus libero a porta. Sed a placerat turpis, ac rutrum sapien.')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
