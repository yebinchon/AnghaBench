
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int * insn_buf; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int BULK_TIMEOUT ;
 int EFAULT ;
 int RETRIES ;
 int SIZEINSNBUF ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 unsigned int le16_to_cpu (int ) ;
 int usb_bulk_msg (struct usb_device*,int ,int *,int ,int*,int ) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int receive_dux_commands(struct comedi_device *dev, unsigned int command)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbdux_private *devpriv = dev->private;
 int ret;
 int nrec;
 int i;

 for (i = 0; i < RETRIES; i++) {
  ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, 8),
       devpriv->insn_buf, SIZEINSNBUF,
       &nrec, BULK_TIMEOUT);
  if (ret < 0)
   return ret;
  if (le16_to_cpu(devpriv->insn_buf[0]) == command)
   return ret;
 }

 return -EFAULT;
}
