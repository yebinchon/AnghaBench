
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int reset_ws; } ;


 scalar_t__ schedule_work (int *) ;
 int usb_get_intf (struct usb_interface*) ;

void usb_queue_reset_device(struct usb_interface *iface)
{
 if (schedule_work(&iface->reset_ws))
  usb_get_intf(iface);
}
