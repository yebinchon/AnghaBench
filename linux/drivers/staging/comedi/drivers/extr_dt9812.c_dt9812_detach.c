
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dt9812_private {int mut; } ;
struct comedi_device {struct dt9812_private* private; } ;


 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 int mutex_destroy (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void dt9812_detach(struct comedi_device *dev)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);
 struct dt9812_private *devpriv = dev->private;

 if (!devpriv)
  return;

 mutex_destroy(&devpriv->mut);
 usb_set_intfdata(intf, ((void*)0));
}
