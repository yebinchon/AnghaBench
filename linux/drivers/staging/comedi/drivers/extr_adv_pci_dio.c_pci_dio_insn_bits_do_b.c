
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; int n_chan; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {unsigned long iobase; } ;


 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static int pci_dio_insn_bits_do_b(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned long reg = (unsigned long)s->private;
 unsigned long iobase = dev->iobase + reg;

 if (comedi_dio_update_state(s, data)) {
  outb(s->state & 0xff, iobase);
  if (s->n_chan > 8)
   outb((s->state >> 8) & 0xff, iobase + 1);
  if (s->n_chan > 16)
   outb((s->state >> 16) & 0xff, iobase + 2);
  if (s->n_chan > 24)
   outb((s->state >> 24) & 0xff, iobase + 3);
 }

 data[1] = s->state;

 return insn->n;
}
