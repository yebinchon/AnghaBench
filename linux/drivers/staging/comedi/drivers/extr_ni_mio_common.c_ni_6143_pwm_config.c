
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int clock_ns; unsigned int pwm_up_count; unsigned int pwm_down_count; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;





 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EAGAIN ;
 int EINVAL ;


 int NI6143_CALIB_HI_TIME_REG ;
 int NI6143_CALIB_LO_TIME_REG ;
 int ni_get_pwm_config (struct comedi_device*,unsigned int*) ;
 int ni_writel (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static int ni_6143_pwm_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct ni_private *devpriv = dev->private;
 unsigned int up_count, down_count;

 switch (data[0]) {
 case 128:
  switch (data[1]) {
  case 131:
   up_count = DIV_ROUND_CLOSEST(data[2],
           devpriv->clock_ns);
   break;
  case 132:
   up_count = data[2] / devpriv->clock_ns;
   break;
  case 130:
   up_count =
       DIV_ROUND_UP(data[2], devpriv->clock_ns);
   break;
  default:
   return -EINVAL;
  }
  switch (data[3]) {
  case 131:
   down_count = DIV_ROUND_CLOSEST(data[4],
             devpriv->clock_ns);
   break;
  case 132:
   down_count = data[4] / devpriv->clock_ns;
   break;
  case 130:
   down_count =
       DIV_ROUND_UP(data[4], devpriv->clock_ns);
   break;
  default:
   return -EINVAL;
  }
  if (up_count * devpriv->clock_ns != data[2] ||
      down_count * devpriv->clock_ns != data[4]) {
   data[2] = up_count * devpriv->clock_ns;
   data[4] = down_count * devpriv->clock_ns;
   return -EAGAIN;
  }
  ni_writel(dev, up_count, NI6143_CALIB_HI_TIME_REG);
  devpriv->pwm_up_count = up_count;
  ni_writel(dev, down_count, NI6143_CALIB_LO_TIME_REG);
  devpriv->pwm_down_count = down_count;
  return 5;
 case 129:
  return ni_get_pwm_config(dev, data);
 default:
  return -EINVAL;
 }
 return 0;
}
