
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int usbduxsigma_pwm_pattern (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int usbduxsigma_pwm_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);





 if (insn->n != 1)
  return -EINVAL;





 usbduxsigma_pwm_pattern(dev, s, chan, data[0], 0);

 return insn->n;
}
