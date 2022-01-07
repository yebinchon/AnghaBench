
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {int pwm_buf_sz; struct urb* pwm_urb; } ;
struct usb_device {int dummy; } ;
struct urb {int transfer_buffer; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 int GFP_ATOMIC ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,int ,int ,int ,struct comedi_device*) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usbduxsigma_pwm_urb_complete ;

__attribute__((used)) static int usbduxsigma_submit_pwm_urb(struct comedi_device *dev)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbduxsigma_private *devpriv = dev->private;
 struct urb *urb = devpriv->pwm_urb;


 usb_fill_bulk_urb(urb, usb, usb_sndbulkpipe(usb, 4),
     urb->transfer_buffer, devpriv->pwm_buf_sz,
     usbduxsigma_pwm_urb_complete, dev);

 return usb_submit_urb(urb, GFP_ATOMIC);
}
