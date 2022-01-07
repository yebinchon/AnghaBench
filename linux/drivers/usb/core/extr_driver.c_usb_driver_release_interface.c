
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int * driver; } ;
struct usb_interface {scalar_t__ condition; struct device dev; } ;
struct TYPE_2__ {int driver; } ;
struct usb_driver {TYPE_1__ drvwrap; } ;


 scalar_t__ USB_INTERFACE_BOUND ;
 scalar_t__ USB_INTERFACE_UNBINDING ;
 scalar_t__ device_is_registered (struct device*) ;
 int device_lock (struct device*) ;
 int device_release_driver (struct device*) ;
 int device_unlock (struct device*) ;
 int usb_unbind_interface (struct device*) ;

void usb_driver_release_interface(struct usb_driver *driver,
     struct usb_interface *iface)
{
 struct device *dev = &iface->dev;


 if (!dev->driver || dev->driver != &driver->drvwrap.driver)
  return;


 if (iface->condition != USB_INTERFACE_BOUND)
  return;
 iface->condition = USB_INTERFACE_UNBINDING;




 if (device_is_registered(dev)) {
  device_release_driver(dev);
 } else {
  device_lock(dev);
  usb_unbind_interface(dev);
  dev->driver = ((void*)0);
  device_unlock(dev);
 }
}
