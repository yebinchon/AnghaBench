
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int intf; } ;
struct usb_device {int dummy; } ;


 struct usb_device* interface_to_usbdev (int ) ;

__attribute__((used)) static struct usb_device *testdev_to_usbdev(struct usbtest_dev *test)
{
 return interface_to_usbdev(test->intf);
}
