
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int DT2811_ADCSR_ADBUSY ;
 scalar_t__ DT2811_ADCSR_REG ;
 int EBUSY ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int dt2811_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + DT2811_ADCSR_REG);
 if ((status & DT2811_ADCSR_ADBUSY) == 0)
  return 0;
 return -EBUSY;
}
