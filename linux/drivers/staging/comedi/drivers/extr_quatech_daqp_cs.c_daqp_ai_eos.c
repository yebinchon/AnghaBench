
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int DAQP_AUX_CONVERSION ;
 scalar_t__ DAQP_AUX_REG ;
 int EBUSY ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int daqp_ai_eos(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + DAQP_AUX_REG);
 if (status & DAQP_AUX_CONVERSION)
  return 0;
 return -EBUSY;
}
