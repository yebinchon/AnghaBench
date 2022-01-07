
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int pwm_urb; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void usbduxsub_unlink_pwm_urbs(struct comedi_device *dev)
{
 struct usbdux_private *devpriv = dev->private;

 usb_kill_urb(devpriv->pwm_urb);
}
