
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ DAC02_AO_LSB (unsigned int) ;
 scalar_t__ DAC02_AO_MSB (unsigned int) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int dac02_ao_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val;
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];

  s->readback[chan] = val;






  if (comedi_range_is_bipolar(s, range))
   val = s->maxdata - val;





  outb((val << 4) & 0xf0, dev->iobase + DAC02_AO_LSB(chan));
  outb((val >> 4) & 0xff, dev->iobase + DAC02_AO_MSB(chan));
 }

 return insn->n;
}
