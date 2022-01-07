
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsigma_private {int pwm_cmd_running; int pwm_buf_sz; TYPE_1__* pwm_urb; int pwm_delay; int * dux_commands; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct TYPE_2__ {int transfer_buffer; } ;


 int USBDUXSIGMA_PWM_ON_CMD ;
 int memset (int ,int ,int ) ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;
 int usbduxsigma_submit_pwm_urb (struct comedi_device*) ;

__attribute__((used)) static int usbduxsigma_pwm_start(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 struct usbduxsigma_private *devpriv = dev->private;
 int ret;

 if (devpriv->pwm_cmd_running)
  return 0;

 devpriv->dux_commands[1] = devpriv->pwm_delay;
 ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_PWM_ON_CMD);
 if (ret < 0)
  return ret;

 memset(devpriv->pwm_urb->transfer_buffer, 0, devpriv->pwm_buf_sz);

 devpriv->pwm_cmd_running = 1;
 ret = usbduxsigma_submit_pwm_urb(dev);
 if (ret < 0) {
  devpriv->pwm_cmd_running = 0;
  return ret;
 }

 return 0;
}
