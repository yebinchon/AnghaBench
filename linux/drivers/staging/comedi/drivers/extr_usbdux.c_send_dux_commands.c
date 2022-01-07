
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {unsigned int* dux_commands; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int BULK_TIMEOUT ;
 int SIZEOFDUXBUFFER ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int usb_bulk_msg (struct usb_device*,int ,unsigned int*,int ,int*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int send_dux_commands(struct comedi_device *dev, unsigned int cmd_type)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbdux_private *devpriv = dev->private;
 int nsent;

 devpriv->dux_commands[0] = cmd_type;

 return usb_bulk_msg(usb, usb_sndbulkpipe(usb, 1),
       devpriv->dux_commands, SIZEOFDUXBUFFER,
       &nsent, BULK_TIMEOUT);
}
