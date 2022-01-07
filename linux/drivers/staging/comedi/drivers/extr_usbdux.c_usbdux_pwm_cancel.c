
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int mut; int pwm_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int USBDUX_CMD_PWM_OFF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_dux_commands (struct comedi_device*,int ) ;
 int usbdux_pwm_stop (struct comedi_device*,int ) ;

__attribute__((used)) static int usbdux_pwm_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct usbdux_private *devpriv = dev->private;
 int ret;

 mutex_lock(&devpriv->mut);

 usbdux_pwm_stop(dev, devpriv->pwm_cmd_running);
 ret = send_dux_commands(dev, USBDUX_CMD_PWM_OFF);
 mutex_unlock(&devpriv->mut);

 return ret;
}
