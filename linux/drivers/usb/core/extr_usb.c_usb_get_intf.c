
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;


 int get_device (int *) ;

struct usb_interface *usb_get_intf(struct usb_interface *intf)
{
 if (intf)
  get_device(&intf->dev);
 return intf;
}
