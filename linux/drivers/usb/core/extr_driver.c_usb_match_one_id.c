
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_match_device (struct usb_device*,struct usb_device_id const*) ;
 int usb_match_one_id_intf (struct usb_device*,struct usb_host_interface*,struct usb_device_id const*) ;

int usb_match_one_id(struct usb_interface *interface,
       const struct usb_device_id *id)
{
 struct usb_host_interface *intf;
 struct usb_device *dev;


 if (id == ((void*)0))
  return 0;

 intf = interface->cur_altsetting;
 dev = interface_to_usbdev(interface);

 if (!usb_match_device(dev, id))
  return 0;

 return usb_match_one_id_intf(dev, intf, id);
}
