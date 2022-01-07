
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_interface {int authorized; struct device dev; } ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;

void usb_authorize_interface(struct usb_interface *intf)
{
 struct device *dev = &intf->dev;

 if (!intf->authorized) {
  device_lock(dev);
  intf->authorized = 1;
  device_unlock(dev);
 }
}
