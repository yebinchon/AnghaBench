
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 scalar_t__ PCI9111_AI_RANGE_STAT_REG ;
 unsigned int PCI9111_AI_STAT_FF_EF ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int pci9111_ai_eoc(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + PCI9111_AI_RANGE_STAT_REG);
 if (status & PCI9111_AI_STAT_FF_EF)
  return 0;
 return -EBUSY;
}
