
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int AIO12_8_STATUS_ADC_EOC ;
 scalar_t__ AIO12_8_STATUS_REG ;
 int EBUSY ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int aio_aio12_8_ai_eoc(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + AIO12_8_STATUS_REG);
 if (status & AIO12_8_STATUS_ADC_EOC)
  return 0;
 return -EBUSY;
}
