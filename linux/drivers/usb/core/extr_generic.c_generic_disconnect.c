
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ actconfig; } ;


 int usb_notify_remove_device (struct usb_device*) ;
 int usb_set_configuration (struct usb_device*,int) ;

__attribute__((used)) static void generic_disconnect(struct usb_device *udev)
{
 usb_notify_remove_device(udev);



 if (udev->actconfig)
  usb_set_configuration(udev, -1);
}
