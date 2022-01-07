
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {unsigned int pwm_cmd_running; unsigned int pwm_period; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;







 int usbduxsigma_pwm_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int usbduxsigma_pwm_pattern (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int,int) ;
 int usbduxsigma_pwm_period (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int usbduxsigma_pwm_start (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int usbduxsigma_pwm_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct usbduxsigma_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 134:




  if (data[1] != 0)
   return -EINVAL;
  return usbduxsigma_pwm_start(dev, s);
 case 133:
  return usbduxsigma_pwm_cancel(dev, s);
 case 132:
  data[1] = devpriv->pwm_cmd_running;
  return 0;
 case 128:
  return usbduxsigma_pwm_period(dev, s, data[1]);
 case 130:
  data[1] = devpriv->pwm_period;
  return 0;
 case 129:




  usbduxsigma_pwm_pattern(dev, s, chan, data[1], (data[2] != 0));
  return 0;
 case 131:

  return -EINVAL;
 }
 return -EINVAL;
}
