import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomeWidget(),
    );
  }
}

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({super.key});

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xFFFFFFFF),
        ),
        title: const Text(
          "Папка 2",
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 18,
          ),
        ),
        actions: const [
          CustomImage(imageUrl: "assets/images/settings.png"),
          SizedBox(width: 10),
          CustomImage(imageUrl: "assets/images/notification.png"),
          SizedBox(width: 10),
          CustomImage(imageUrl: "assets/images/teleg.png"),
          SizedBox(width: 10),
          SizedBox(
            height: 80,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: const [
              TextWidget(
                mainTitle: "Гусеница в сборе",
                photo1: "assets/images/gus.png",
                userText: 'Howo/ Самосвал/ Ходовка',
              ),
              SizedBox(
                height: 24,
              ),
              TextWidget(
                  mainTitle: "Форсунка Bosch",
                  userText: "Toyota/ Land Cruser Prada/\nТопливная система",
                  photo1: "assets/images/fors.png"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF219653),
        onPressed: (() {}),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.userText,
    required this.mainTitle,
    required this.photo1,
  }) : super(key: key);

  final String userText;
  final String mainTitle;
  final String photo1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        height: 272,
        margin: const EdgeInsets.only(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(5, 5),
              blurRadius: 15,
              spreadRadius: 1,
              blurStyle: BlurStyle.solid,
            ),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1,
                blurStyle: BlurStyle.solid),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 22, left: 24),
                  child: Text(
                    "Заявка ",
                    style: TextStyle(color: Color(0xFF27AE60), fontSize: 14),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: Text(
                    "№412651",
                    style: TextStyle(color: Color(0xFF828282)),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 22),
                  child: Text(
                    "25.10.2021",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color((0xFF828282)),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 22, left: 80),
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset("assets/images/kebabmenu.png"),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22, top: 14),
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Image.asset(
                      photo1,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      mainTitle,
                      style: const TextStyle(
                          fontSize: 18, color: Color(0xFF333333)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        userText,
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xFF219653)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: const [
                      Text(
                        "Количество (шт):",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF828282)),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("1"),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Предложения:",
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("3")
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: const [
                      Text(
                        "Актуальность(дни):",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF828282)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("3"),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Сообщения:",
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      Text("6")
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.78,
              height: MediaQuery.of(context).size.height * 0.059,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF27AE60)),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFF333333)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Сообщения",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  final String imageUrl;

  const CustomImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      height: 20,
      width: 20,
    );
  }
}
