
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmk80xx_private {int usb_rx_buf; TYPE_2__* ep_tx; int usb_tx_buf; TYPE_1__* ep_rx; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct vmk80xx_private* private; } ;
typedef int __u8 ;
struct TYPE_4__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_3__ {int bEndpointAddress; } ;


 int HZ ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int usb_bulk_msg (struct usb_device*,unsigned int,int ,size_t,int *,int) ;
 size_t usb_endpoint_maxp (TYPE_2__*) ;
 unsigned int usb_rcvbulkpipe (struct usb_device*,int ) ;
 unsigned int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static void vmk80xx_do_bulk_msg(struct comedi_device *dev)
{
 struct vmk80xx_private *devpriv = dev->private;
 struct usb_device *usb = comedi_to_usb_dev(dev);
 __u8 tx_addr;
 __u8 rx_addr;
 unsigned int tx_pipe;
 unsigned int rx_pipe;
 size_t size;

 tx_addr = devpriv->ep_tx->bEndpointAddress;
 rx_addr = devpriv->ep_rx->bEndpointAddress;
 tx_pipe = usb_sndbulkpipe(usb, tx_addr);
 rx_pipe = usb_rcvbulkpipe(usb, rx_addr);





 size = usb_endpoint_maxp(devpriv->ep_tx);

 usb_bulk_msg(usb, tx_pipe, devpriv->usb_tx_buf,
       size, ((void*)0), devpriv->ep_tx->bInterval);
 usb_bulk_msg(usb, rx_pipe, devpriv->usb_rx_buf, size, ((void*)0), HZ * 10);
}
