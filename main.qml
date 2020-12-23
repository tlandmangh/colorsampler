import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 450
    height: 200
    visible: true
    title: qsTr("Color Sampler")

    Rectangle {
        x: 50
        y: 50
        Row {
            spacing: 20
            Rectangle {
                id: sampleRect
                width: height
                height: 100
                color: colorValueInput.text
                border.width: 2
                radius: 15
            }

            TextField {
                id: colorValueInput
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 12
                maximumLength: 25
                width: 250
                inputMethodHints: Qt.ImhPreferLowercase
                placeholderText: qsTr("enter a color name or #hex")
            }
        }
    }

}
