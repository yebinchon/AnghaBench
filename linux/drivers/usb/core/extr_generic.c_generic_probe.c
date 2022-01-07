
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ authorized; int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int usb_choose_configuration (struct usb_device*) ;
 int usb_notify_add_device (struct usb_device*) ;
 int usb_set_configuration (struct usb_device*,int) ;

__attribute__((used)) static int generic_probe(struct usb_device *udev)
{
 int err, c;




 if (udev->authorized == 0)
  dev_err(&udev->dev, "Device is not authorized for usage\n");
 else {
  c = usb_choose_configuration(udev);
  if (c >= 0) {
   err = usb_set_configuration(udev, c);
   if (err && err != -ENODEV) {
    dev_err(&udev->dev, "can't set config #%d, error %d\n",
     c, err);


   }
  }
 }

 usb_notify_add_device(udev);

 return 0;
}
