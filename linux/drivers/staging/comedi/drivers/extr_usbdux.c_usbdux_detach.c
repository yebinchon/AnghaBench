
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int mut; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;


 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbdux_ai_stop (struct comedi_device*,int) ;
 int usbdux_ao_stop (struct comedi_device*,int) ;
 int usbdux_free_usb_buffers (struct comedi_device*) ;
 int usbdux_pwm_stop (struct comedi_device*,int) ;

__attribute__((used)) static void usbdux_detach(struct comedi_device *dev)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);
 struct usbdux_private *devpriv = dev->private;

 usb_set_intfdata(intf, ((void*)0));

 if (!devpriv)
  return;

 mutex_lock(&devpriv->mut);


 usbdux_pwm_stop(dev, 1);
 usbdux_ao_stop(dev, 1);
 usbdux_ai_stop(dev, 1);

 usbdux_free_usb_buffers(dev);

 mutex_unlock(&devpriv->mut);

 mutex_destroy(&devpriv->mut);
}
