
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCI9111_AI_CHANNEL_REG ;
 scalar_t__ PCI9111_AI_FIFO_REG ;
 unsigned int PCI9111_AI_RANGE (unsigned int) ;
 unsigned int PCI9111_AI_RANGE_MASK ;
 scalar_t__ PCI9111_AI_RANGE_STAT_REG ;
 scalar_t__ PCI9111_SOFT_TRIG_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inb (scalar_t__) ;
 unsigned int inw (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int pci9111_ai_eoc ;
 int pci9111_fifo_reset (struct comedi_device*) ;

__attribute__((used)) static int pci9111_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int maxdata = s->maxdata;
 unsigned int invert = (maxdata + 1) >> 1;
 unsigned int shift = (maxdata == 0xffff) ? 0 : 4;
 unsigned int status;
 int ret;
 int i;

 outb(chan, dev->iobase + PCI9111_AI_CHANNEL_REG);

 status = inb(dev->iobase + PCI9111_AI_RANGE_STAT_REG);
 if ((status & PCI9111_AI_RANGE_MASK) != range) {
  outb(PCI9111_AI_RANGE(range),
       dev->iobase + PCI9111_AI_RANGE_STAT_REG);
 }

 pci9111_fifo_reset(dev);

 for (i = 0; i < insn->n; i++) {

  outb(0, dev->iobase + PCI9111_SOFT_TRIG_REG);

  ret = comedi_timeout(dev, s, insn, pci9111_ai_eoc, 0);
  if (ret) {
   pci9111_fifo_reset(dev);
   return ret;
  }

  data[i] = inw(dev->iobase + PCI9111_AI_FIFO_REG);
  data[i] = ((data[i] >> shift) & maxdata) ^ invert;
 }

 return i;
}
