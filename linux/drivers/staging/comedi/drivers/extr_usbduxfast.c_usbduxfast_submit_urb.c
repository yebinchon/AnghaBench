
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfast_private {int urb; int inbuf; } ;
struct usb_device {int dummy; } ;
struct comedi_device {int class_dev; struct usbduxfast_private* private; } ;


 int BULKINEP ;
 int GFP_ATOMIC ;
 int SIZEINBUF ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*,int) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int ,int ,struct comedi_device*) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;
 int usbduxfast_ai_interrupt ;

__attribute__((used)) static int usbduxfast_submit_urb(struct comedi_device *dev)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbduxfast_private *devpriv = dev->private;
 int ret;

 usb_fill_bulk_urb(devpriv->urb, usb, usb_rcvbulkpipe(usb, BULKINEP),
     devpriv->inbuf, SIZEINBUF,
     usbduxfast_ai_interrupt, dev);

 ret = usb_submit_urb(devpriv->urb, GFP_ATOMIC);
 if (ret) {
  dev_err(dev->class_dev, "usb_submit_urb error %d\n", ret);
  return ret;
 }
 return 0;
}
