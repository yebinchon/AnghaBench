
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 struct device* bus_find_device_by_devt (int *,int ) ;
 struct usb_device* to_usb_device (struct device*) ;
 int usb_bus_type ;

__attribute__((used)) static struct usb_device *usbdev_lookup_by_devt(dev_t devt)
{
 struct device *dev;

 dev = bus_find_device_by_devt(&usb_bus_type, devt);
 if (!dev)
  return ((void*)0);
 return to_usb_device(dev);
}
