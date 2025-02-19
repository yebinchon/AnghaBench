
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_dio_insn_bits(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int mask;
 unsigned int val;

 mask = comedi_dio_update_state(s, data);
 if (mask) {
  if (mask & 0xff)
   outl(s->state & 0xff, dev->iobase + 80);
  if (mask & 0xff0000)
   outl((s->state >> 16) & 0xff, dev->iobase + 112);
 }

 val = inl(dev->iobase + 80);
 val |= (inl(dev->iobase + 64) << 8);
 if (s->io_bits & 0xff0000)
  val |= (inl(dev->iobase + 112) << 16);
 else
  val |= (inl(dev->iobase + 96) << 16);

 data[1] = val;

 return insn->n;
}
