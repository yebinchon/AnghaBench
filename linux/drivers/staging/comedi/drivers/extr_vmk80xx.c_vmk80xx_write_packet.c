
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {int* usb_tx_buf; scalar_t__ model; struct usb_endpoint_descriptor* ep_tx; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 int HZ ;
 scalar_t__ VMK8061_MODEL ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_interrupt_msg (struct usb_device*,unsigned int,int*,int ,int *,int) ;
 unsigned int usb_sndintpipe (struct usb_device*,int ) ;
 int vmk80xx_do_bulk_msg (struct comedi_device*) ;

__attribute__((used)) static int vmk80xx_write_packet(struct comedi_device *dev, int cmd)
{
 struct vmk80xx_private *devpriv = dev->private;
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usb_endpoint_descriptor *ep;
 unsigned int pipe;

 devpriv->usb_tx_buf[0] = cmd;

 if (devpriv->model == VMK8061_MODEL) {
  vmk80xx_do_bulk_msg(dev);
  return 0;
 }

 ep = devpriv->ep_tx;
 pipe = usb_sndintpipe(usb, ep->bEndpointAddress);
 return usb_interrupt_msg(usb, pipe, devpriv->usb_tx_buf,
     usb_endpoint_maxp(ep), ((void*)0),
     HZ * 10);
}
