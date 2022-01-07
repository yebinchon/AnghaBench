
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {unsigned int ai_ctrl; unsigned int softsshsample; unsigned int softsshhold; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct pci9118_private* private; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 scalar_t__ PCI9118_AI_AUTOSCAN_MODE_REG ;
 unsigned int PCI9118_AI_CHANLIST_CHAN (unsigned int) ;
 unsigned int PCI9118_AI_CHANLIST_RANGE (unsigned int) ;
 scalar_t__ PCI9118_AI_CHANLIST_REG ;
 unsigned int PCI9118_AI_CTRL_DIFF ;
 scalar_t__ PCI9118_AI_CTRL_REG ;
 unsigned int PCI9118_AI_CTRL_UNIP ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static void pci9118_set_chanlist(struct comedi_device *dev,
     struct comedi_subdevice *s,
     int n_chan, unsigned int *chanlist,
     int frontadd, int backadd)
{
 struct pci9118_private *devpriv = dev->private;
 unsigned int chan0 = CR_CHAN(chanlist[0]);
 unsigned int range0 = CR_RANGE(chanlist[0]);
 unsigned int aref0 = CR_AREF(chanlist[0]);
 unsigned int ssh = 0x00;
 unsigned int val;
 int i;






 devpriv->ai_ctrl = 0;
 if (comedi_range_is_unipolar(s, range0))
  devpriv->ai_ctrl |= PCI9118_AI_CTRL_UNIP;
 if (aref0 == AREF_DIFF)
  devpriv->ai_ctrl |= PCI9118_AI_CTRL_DIFF;
 outl(devpriv->ai_ctrl, dev->iobase + PCI9118_AI_CTRL_REG);


 outl(2, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);
 outl(0, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);
 outl(1, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);


 if (frontadd) {
  val = PCI9118_AI_CHANLIST_CHAN(chan0) |
        PCI9118_AI_CHANLIST_RANGE(range0);
  ssh = devpriv->softsshsample;
  for (i = 0; i < frontadd; i++) {
   outl(val | ssh, dev->iobase + PCI9118_AI_CHANLIST_REG);
   ssh = devpriv->softsshhold;
  }
 }


 for (i = 0; i < n_chan; i++) {
  unsigned int chan = CR_CHAN(chanlist[i]);
  unsigned int range = CR_RANGE(chanlist[i]);

  val = PCI9118_AI_CHANLIST_CHAN(chan) |
        PCI9118_AI_CHANLIST_RANGE(range);
  outl(val | ssh, dev->iobase + PCI9118_AI_CHANLIST_REG);
 }


 if (backadd) {
  val = PCI9118_AI_CHANLIST_CHAN(chan0) |
        PCI9118_AI_CHANLIST_RANGE(range0);
  for (i = 0; i < backadd; i++)
   outl(val | ssh, dev->iobase + PCI9118_AI_CHANLIST_REG);
 }

 outl(0, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);

}
