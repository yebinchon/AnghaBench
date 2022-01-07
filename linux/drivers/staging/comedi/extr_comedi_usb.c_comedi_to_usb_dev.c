
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct comedi_device {int dummy; } ;


 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

struct usb_device *comedi_to_usb_dev(struct comedi_device *dev)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);

 return intf ? interface_to_usbdev(intf) : ((void*)0);
}
