
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 scalar_t__ PCI6208_AO_STATUS ;
 unsigned int PCI6208_AO_STATUS_DATA_SEND ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int pci6208_ao_eoc(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned long context)
{
 unsigned int status;

 status = inw(dev->iobase + PCI6208_AO_STATUS);
 if ((status & PCI6208_AO_STATUS_DATA_SEND) == 0)
  return 0;
 return -EBUSY;
}
