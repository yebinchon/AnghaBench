
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {int ai_cfg; } ;
struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct pci9118_private* private; } ;


 int PCI9118_AI_CFG_PDTRG ;
 int PCI9118_AI_CFG_PETRG ;
 scalar_t__ PCI9118_AI_CFG_REG ;
 scalar_t__ PCI9118_AI_FIFO_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int pci9118_ai_eoc ;
 int pci9118_ai_reset_fifo (struct comedi_device*) ;
 int pci9118_ai_start_conv (struct comedi_device*) ;
 int pci9118_set_chanlist (struct comedi_device*,struct comedi_subdevice*,int,int *,int ,int ) ;

__attribute__((used)) static int pci9118_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct pci9118_private *devpriv = dev->private;
 unsigned int val;
 int ret;
 int i;





 pci9118_set_chanlist(dev, s, 1, &insn->chanspec, 0, 0);


 devpriv->ai_cfg = PCI9118_AI_CFG_PDTRG | PCI9118_AI_CFG_PETRG;
 outl(devpriv->ai_cfg, dev->iobase + PCI9118_AI_CFG_REG);

 pci9118_ai_reset_fifo(dev);

 for (i = 0; i < insn->n; i++) {
  pci9118_ai_start_conv(dev);

  ret = comedi_timeout(dev, s, insn, pci9118_ai_eoc, 0);
  if (ret)
   return ret;

  val = inl(dev->iobase + PCI9118_AI_FIFO_REG);
  if (s->maxdata == 0xffff)
   data[i] = (val & 0xffff) ^ 0x8000;
  else
   data[i] = (val >> 4) & 0xfff;
 }

 return insn->n;
}
