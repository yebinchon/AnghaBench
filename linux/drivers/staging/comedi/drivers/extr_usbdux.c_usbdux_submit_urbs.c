
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int ai_interval; } ;
struct usb_device {int dummy; } ;
struct urb {int transfer_flags; scalar_t__ status; struct usb_device* dev; struct comedi_device* context; int interval; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int GFP_ATOMIC ;
 int URB_ISO_ASAP ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int usbdux_submit_urbs(struct comedi_device *dev,
         struct urb **urbs, int num_urbs,
         int input_urb)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbdux_private *devpriv = dev->private;
 struct urb *urb;
 int ret;
 int i;


 for (i = 0; i < num_urbs; i++) {
  urb = urbs[i];


  if (input_urb)
   urb->interval = devpriv->ai_interval;
  urb->context = dev;
  urb->dev = usb;
  urb->status = 0;
  urb->transfer_flags = URB_ISO_ASAP;

  ret = usb_submit_urb(urb, GFP_ATOMIC);
  if (ret)
   return ret;
 }
 return 0;
}
