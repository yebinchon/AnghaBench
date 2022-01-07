
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbdux_private {int pwm_cmd_running; int mut; int pwm_buf_sz; TYPE_1__* pwm_urb; int pwm_delay; int * dux_commands; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;
struct TYPE_2__ {int transfer_buffer; } ;


 int USBDUX_CMD_PWM_ON ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_dux_commands (struct comedi_device*,int ) ;
 int usbduxsub_submit_pwm_urbs (struct comedi_device*) ;

__attribute__((used)) static int usbdux_pwm_start(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct usbdux_private *devpriv = dev->private;
 int ret = 0;

 mutex_lock(&devpriv->mut);

 if (devpriv->pwm_cmd_running)
  goto pwm_start_exit;

 devpriv->dux_commands[1] = devpriv->pwm_delay;
 ret = send_dux_commands(dev, USBDUX_CMD_PWM_ON);
 if (ret < 0)
  goto pwm_start_exit;


 memset(devpriv->pwm_urb->transfer_buffer, 0, devpriv->pwm_buf_sz);

 devpriv->pwm_cmd_running = 1;
 ret = usbduxsub_submit_pwm_urbs(dev);
 if (ret < 0)
  devpriv->pwm_cmd_running = 0;

pwm_start_exit:
 mutex_unlock(&devpriv->mut);

 return ret;
}
