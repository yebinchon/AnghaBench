
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rti802_private {scalar_t__* dac_coding; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct rti802_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ RTI802_DATAHIGH ;
 scalar_t__ RTI802_DATALOW ;
 scalar_t__ RTI802_SELECT ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ dac_2comp ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int rti802_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct rti802_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 outb(chan, dev->iobase + RTI802_SELECT);

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  s->readback[chan] = val;


  if (devpriv->dac_coding[chan] == dac_2comp)
   val = comedi_offset_munge(s, val);

  outb(val & 0xff, dev->iobase + RTI802_DATALOW);
  outb((val >> 8) & 0xff, dev->iobase + RTI802_DATAHIGH);
 }

 return insn->n;
}
