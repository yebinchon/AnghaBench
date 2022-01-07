
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfast_private {int mut; int duxbuf; scalar_t__ urb; int inbuf; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {struct usbduxfast_private* private; } ;


 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usbduxfast_detach(struct comedi_device *dev)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);
 struct usbduxfast_private *devpriv = dev->private;

 if (!devpriv)
  return;

 mutex_lock(&devpriv->mut);

 usb_set_intfdata(intf, ((void*)0));

 if (devpriv->urb) {

  usb_kill_urb(devpriv->urb);

  kfree(devpriv->inbuf);
  usb_free_urb(devpriv->urb);
 }

 kfree(devpriv->duxbuf);

 mutex_unlock(&devpriv->mut);

 mutex_destroy(&devpriv->mut);
}
