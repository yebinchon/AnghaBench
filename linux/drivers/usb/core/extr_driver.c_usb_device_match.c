
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_driver {int id_table; } ;
struct usb_device_id {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ is_usb_device (struct device*) ;
 scalar_t__ is_usb_device_driver (struct device_driver*) ;
 scalar_t__ is_usb_interface (struct device*) ;
 struct usb_driver* to_usb_driver (struct device_driver*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_device_id* usb_match_dynamic_id (struct usb_interface*,struct usb_driver*) ;
 struct usb_device_id* usb_match_id (struct usb_interface*,int ) ;

__attribute__((used)) static int usb_device_match(struct device *dev, struct device_driver *drv)
{

 if (is_usb_device(dev)) {


  if (!is_usb_device_driver(drv))
   return 0;


  return 1;

 } else if (is_usb_interface(dev)) {
  struct usb_interface *intf;
  struct usb_driver *usb_drv;
  const struct usb_device_id *id;


  if (is_usb_device_driver(drv))
   return 0;

  intf = to_usb_interface(dev);
  usb_drv = to_usb_driver(drv);

  id = usb_match_id(intf, usb_drv->id_table);
  if (id)
   return 1;

  id = usb_match_dynamic_id(intf, usb_drv);
  if (id)
   return 1;
 }

 return 0;
}
