
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {scalar_t__ daqio; int ao_bipolar; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct pci230_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCI230_DACCON ;
 int comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int outw (unsigned int,scalar_t__) ;
 int pci230_ao_write_nofifo (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int pci230_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct pci230_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;





 devpriv->ao_bipolar = comedi_range_is_bipolar(s, range);
 outw(range, devpriv->daqio + PCI230_DACCON);

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  pci230_ao_write_nofifo(dev, val, chan);
 }
 s->readback[chan] = val;

 return insn->n;
}
