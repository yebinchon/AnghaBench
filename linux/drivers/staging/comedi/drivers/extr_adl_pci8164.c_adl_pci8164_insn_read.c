
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ PCI8164_AXIS (unsigned int) ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int adl_pci8164_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned long offset = (unsigned long)s->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++)
  data[i] = inw(dev->iobase + PCI8164_AXIS(chan) + offset);

 return insn->n;
}
