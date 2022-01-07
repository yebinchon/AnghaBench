
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {scalar_t__ pwm_cmd_running; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int usbduxsub_unlink_pwm_urbs (struct comedi_device*) ;

__attribute__((used)) static void usbdux_pwm_stop(struct comedi_device *dev, int do_unlink)
{
 struct usbdux_private *devpriv = dev->private;

 if (do_unlink)
  usbduxsub_unlink_pwm_urbs(dev);

 devpriv->pwm_cmd_running = 0;
}
