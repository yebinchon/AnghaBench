
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {int limit_sem; int usb_tx_buf; int usb_rx_buf; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 int down (int *) ;
 int kfree (int ) ;
 int up (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void vmk80xx_detach(struct comedi_device *dev)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);
 struct vmk80xx_private *devpriv = dev->private;

 if (!devpriv)
  return;

 down(&devpriv->limit_sem);

 usb_set_intfdata(intf, ((void*)0));

 kfree(devpriv->usb_rx_buf);
 kfree(devpriv->usb_tx_buf);

 up(&devpriv->limit_sem);
}
