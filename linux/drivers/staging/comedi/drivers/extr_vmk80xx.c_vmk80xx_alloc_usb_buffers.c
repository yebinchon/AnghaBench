
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {void* usb_tx_buf; int ep_tx; void* usb_rx_buf; int ep_rx; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kzalloc (size_t,int ) ;
 size_t usb_endpoint_maxp (int ) ;

__attribute__((used)) static int vmk80xx_alloc_usb_buffers(struct comedi_device *dev)
{
 struct vmk80xx_private *devpriv = dev->private;
 size_t size;

 size = usb_endpoint_maxp(devpriv->ep_rx);
 devpriv->usb_rx_buf = kzalloc(size, GFP_KERNEL);
 if (!devpriv->usb_rx_buf)
  return -ENOMEM;

 size = usb_endpoint_maxp(devpriv->ep_tx);
 devpriv->usb_tx_buf = kzalloc(size, GFP_KERNEL);
 if (!devpriv->usb_tx_buf)
  return -ENOMEM;

 return 0;
}
