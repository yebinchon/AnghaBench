
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ni6501_private {int usb_tx_buf; int usb_rx_buf; int mut; } ;
struct comedi_device {struct ni6501_private* private; } ;


 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ni6501_detach(struct comedi_device *dev)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);
 struct ni6501_private *devpriv = dev->private;

 if (!devpriv)
  return;

 mutex_destroy(&devpriv->mut);

 usb_set_intfdata(intf, ((void*)0));

 kfree(devpriv->usb_rx_buf);
 kfree(devpriv->usb_tx_buf);
}
