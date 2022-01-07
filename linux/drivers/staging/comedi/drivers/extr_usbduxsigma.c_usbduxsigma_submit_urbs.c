
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct urb {int interval; int transfer_flags; scalar_t__ status; struct usb_device* dev; struct comedi_device* context; } ;
struct comedi_device {int dummy; } ;


 int GFP_ATOMIC ;
 int URB_ISO_ASAP ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int usbduxsigma_submit_urbs(struct comedi_device *dev,
       struct urb **urbs, int num_urbs,
       int input_urb)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct urb *urb;
 int ret;
 int i;


 for (i = 0; i < num_urbs; i++) {
  urb = urbs[i];


  if (input_urb)
   urb->interval = 1;
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
