
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {int pwm_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 int USBDUXSIGMA_PWM_OFF_CMD ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;
 int usbduxsigma_pwm_stop (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxsigma_pwm_cancel(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct usbduxsigma_private *devpriv = dev->private;


 usbduxsigma_pwm_stop(dev, devpriv->pwm_cmd_running);

 return usbbuxsigma_send_cmd(dev, USBDUXSIGMA_PWM_OFF_CMD);
}
