
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;




 scalar_t__ DT2821_ADCSR_REG ;
 int EBUSY ;
 int EINVAL ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int dt282x_ai_timeout(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned long context)
{
 unsigned int status;

 status = inw(dev->iobase + DT2821_ADCSR_REG);
 switch (context) {
 case 128:
  if ((status & 128) == 0)
   return 0;
  break;
 case 129:
  if (status & 129)
   return 0;
  break;
 default:
  return -EINVAL;
 }
 return -EBUSY;
}
