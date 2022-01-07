
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci1710_private {unsigned int* act_chanlist; int mux_scan; scalar_t__ unipolar_gain; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct pci1710_private* private; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (unsigned int) ;
 void* CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 unsigned int PCI171X_MUX_CHAN (unsigned int) ;
 int PCI171X_MUX_CHANH (unsigned int) ;
 int PCI171X_MUX_CHANL (unsigned int) ;
 scalar_t__ PCI171X_MUX_REG ;
 unsigned int PCI171X_RANGE_DIFF ;
 unsigned int PCI171X_RANGE_GAIN (unsigned int) ;
 scalar_t__ PCI171X_RANGE_REG ;
 unsigned int PCI171X_RANGE_UNI ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void pci1710_ai_setup_chanlist(struct comedi_device *dev,
          struct comedi_subdevice *s,
          unsigned int *chanlist,
          unsigned int n_chan,
          unsigned int seglen)
{
 struct pci1710_private *devpriv = dev->private;
 unsigned int first_chan = CR_CHAN(chanlist[0]);
 unsigned int last_chan = CR_CHAN(chanlist[seglen - 1]);
 unsigned int i;

 for (i = 0; i < seglen; i++) {
  unsigned int chan = CR_CHAN(chanlist[i]);
  unsigned int range = CR_RANGE(chanlist[i]);
  unsigned int aref = CR_AREF(chanlist[i]);
  unsigned int rangeval = 0;

  if (aref == AREF_DIFF)
   rangeval |= PCI171X_RANGE_DIFF;
  if (comedi_range_is_unipolar(s, range)) {
   rangeval |= PCI171X_RANGE_UNI;
   range -= devpriv->unipolar_gain;
  }
  rangeval |= PCI171X_RANGE_GAIN(range);


  outw(PCI171X_MUX_CHAN(chan), dev->iobase + PCI171X_MUX_REG);
  outw(rangeval, dev->iobase + PCI171X_RANGE_REG);

  devpriv->act_chanlist[i] = chan;
 }
 for ( ; i < n_chan; i++)
  devpriv->act_chanlist[i] = CR_CHAN(chanlist[i]);


 devpriv->mux_scan = PCI171X_MUX_CHANL(first_chan) |
       PCI171X_MUX_CHANH(last_chan);
 outw(devpriv->mux_scan, dev->iobase + PCI171X_MUX_REG);
}
