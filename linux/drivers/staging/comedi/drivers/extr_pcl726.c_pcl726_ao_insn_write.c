
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCL726_AO_LSB_REG (unsigned int) ;
 scalar_t__ PCL726_AO_MSB_REG (unsigned int) ;
 scalar_t__ comedi_chan_range_is_bipolar (struct comedi_subdevice*,unsigned int,unsigned int) ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int pcl726_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  s->readback[chan] = val;


  if (comedi_chan_range_is_bipolar(s, chan, range))
   val = comedi_offset_munge(s, val);


  outb((val >> 8) & 0xff, dev->iobase + PCL726_AO_MSB_REG(chan));
  outb(val & 0xff, dev->iobase + PCL726_AO_LSB_REG(chan));
 }

 return insn->n;
}
