
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_driver {int supports_autosuspend; int (* disconnect ) (struct usb_device*) ;} ;
struct usb_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct usb_device*) ;
 struct usb_device* to_usb_device (struct device*) ;
 struct usb_device_driver* to_usb_device_driver (int ) ;
 int usb_autosuspend_device (struct usb_device*) ;

__attribute__((used)) static int usb_unbind_device(struct device *dev)
{
 struct usb_device *udev = to_usb_device(dev);
 struct usb_device_driver *udriver = to_usb_device_driver(dev->driver);

 udriver->disconnect(udev);
 if (!udriver->supports_autosuspend)
  usb_autosuspend_device(udev);
 return 0;
}
