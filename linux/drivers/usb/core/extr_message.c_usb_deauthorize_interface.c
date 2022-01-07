
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;
struct usb_interface {scalar_t__ authorized; struct device dev; } ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int usb_forced_unbind_intf (struct usb_interface*) ;

void usb_deauthorize_interface(struct usb_interface *intf)
{
 struct device *dev = &intf->dev;

 device_lock(dev->parent);

 if (intf->authorized) {
  device_lock(dev);
  intf->authorized = 0;
  device_unlock(dev);

  usb_forced_unbind_intf(intf);
 }

 device_unlock(dev->parent);
}
