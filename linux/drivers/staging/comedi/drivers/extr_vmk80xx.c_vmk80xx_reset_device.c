
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {int usb_tx_buf; int ep_tx; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 int VMK8055_CMD_RST ;
 int VMK8055_CMD_WRT_AD ;
 int memset (int ,int ,size_t) ;
 size_t usb_endpoint_maxp (int ) ;
 int vmk80xx_write_packet (struct comedi_device*,int ) ;

__attribute__((used)) static int vmk80xx_reset_device(struct comedi_device *dev)
{
 struct vmk80xx_private *devpriv = dev->private;
 size_t size;
 int retval;

 size = usb_endpoint_maxp(devpriv->ep_tx);
 memset(devpriv->usb_tx_buf, 0, size);
 retval = vmk80xx_write_packet(dev, VMK8055_CMD_RST);
 if (retval)
  return retval;

 return vmk80xx_write_packet(dev, VMK8055_CMD_WRT_AD);
}
