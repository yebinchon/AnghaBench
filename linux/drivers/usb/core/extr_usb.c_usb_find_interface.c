
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int driver; } ;
struct usb_driver {TYPE_1__ drvwrap; } ;
struct find_interface_arg {int minor; int * drv; } ;
struct device {int dummy; } ;


 int __find_interface ;
 struct device* bus_find_device (int *,int *,struct find_interface_arg*,int ) ;
 int put_device (struct device*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_bus_type ;

struct usb_interface *usb_find_interface(struct usb_driver *drv, int minor)
{
 struct find_interface_arg argb;
 struct device *dev;

 argb.minor = minor;
 argb.drv = &drv->drvwrap.driver;

 dev = bus_find_device(&usb_bus_type, ((void*)0), &argb, __find_interface);


 put_device(dev);

 return dev ? to_usb_interface(dev) : ((void*)0);
}
