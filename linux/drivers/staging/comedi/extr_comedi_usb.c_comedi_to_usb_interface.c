
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct comedi_device {scalar_t__ hw_dev; } ;


 struct usb_interface* to_usb_interface (scalar_t__) ;

struct usb_interface *comedi_to_usb_interface(struct comedi_device *dev)
{
 return dev->hw_dev ? to_usb_interface(dev->hw_dev) : ((void*)0);
}
