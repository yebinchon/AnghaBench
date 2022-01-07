
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 unsigned int PCI1724_SYNC_CTRL_DACSTAT ;
 scalar_t__ PCI1724_SYNC_CTRL_REG ;
 unsigned int inl (scalar_t__) ;

__attribute__((used)) static int adv_pci1724_dac_idle(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned int status;

 status = inl(dev->iobase + PCI1724_SYNC_CTRL_REG);
 if ((status & PCI1724_SYNC_CTRL_DACSTAT) == 0)
  return 0;
 return -EBUSY;
}
