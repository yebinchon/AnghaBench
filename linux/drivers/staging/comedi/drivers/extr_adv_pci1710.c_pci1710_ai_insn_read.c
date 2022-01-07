
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci1710_private {int ctrl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct pci1710_private* private; } ;


 scalar_t__ PCI171X_CLRFIFO_REG ;
 scalar_t__ PCI171X_CLRINT_REG ;
 scalar_t__ PCI171X_CTRL_REG ;
 int PCI171X_CTRL_SW ;
 scalar_t__ PCI171X_SOFTTRG_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int pci1710_ai_eoc ;
 int pci1710_ai_read_sample (struct comedi_device*,struct comedi_subdevice*,int ,unsigned int*) ;
 int pci1710_ai_setup_chanlist (struct comedi_device*,struct comedi_subdevice*,int *,int,int) ;

__attribute__((used)) static int pci1710_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct pci1710_private *devpriv = dev->private;
 int ret = 0;
 int i;


 devpriv->ctrl |= PCI171X_CTRL_SW;
 outw(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);

 outb(0, dev->iobase + PCI171X_CLRFIFO_REG);
 outb(0, dev->iobase + PCI171X_CLRINT_REG);

 pci1710_ai_setup_chanlist(dev, s, &insn->chanspec, 1, 1);

 for (i = 0; i < insn->n; i++) {
  unsigned int val;


  outw(0, dev->iobase + PCI171X_SOFTTRG_REG);

  ret = comedi_timeout(dev, s, insn, pci1710_ai_eoc, 0);
  if (ret)
   break;

  ret = pci1710_ai_read_sample(dev, s, 0, &val);
  if (ret)
   break;

  data[i] = val;
 }


 devpriv->ctrl &= ~PCI171X_CTRL_SW;
 outw(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);

 outb(0, dev->iobase + PCI171X_CLRFIFO_REG);
 outb(0, dev->iobase + PCI171X_CLRINT_REG);

 return ret ? ret : insn->n;
}
