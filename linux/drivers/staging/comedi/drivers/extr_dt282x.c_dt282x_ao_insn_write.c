
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int dacsr; unsigned int supcsr; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ DT2821_DACSR_REG ;
 int DT2821_DACSR_SSEL ;
 int DT2821_DACSR_YSEL (unsigned int) ;
 scalar_t__ DT2821_DADAT_REG ;
 unsigned int DT2821_SUPCSR_DACON ;
 scalar_t__ DT2821_SUPCSR_REG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int dt282x_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct dt282x_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 int i;

 devpriv->dacsr |= DT2821_DACSR_SSEL | DT2821_DACSR_YSEL(chan);

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  s->readback[chan] = val;

  if (comedi_range_is_bipolar(s, range))
   val = comedi_offset_munge(s, val);

  outw(devpriv->dacsr, dev->iobase + DT2821_DACSR_REG);

  outw(val, dev->iobase + DT2821_DADAT_REG);

  outw(devpriv->supcsr | DT2821_SUPCSR_DACON,
       dev->iobase + DT2821_SUPCSR_REG);
 }

 return insn->n;
}
