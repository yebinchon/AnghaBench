
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 unsigned int PCI171X_STATUS_FE ;
 scalar_t__ PCI171X_STATUS_REG ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int pci1710_ai_eoc(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned long context)
{
 unsigned int status;

 status = inw(dev->iobase + PCI171X_STATUS_REG);
 if ((status & PCI171X_STATUS_FE) == 0)
  return 0;
 return -EBUSY;
}
