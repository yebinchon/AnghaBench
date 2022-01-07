
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; int n_chan; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {unsigned long iobase; } ;


 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outw (int,unsigned long) ;

__attribute__((used)) static int pci_dio_insn_bits_do_w(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned long reg = (unsigned long)s->private;
 unsigned long iobase = dev->iobase + reg;

 if (comedi_dio_update_state(s, data)) {
  outw(s->state & 0xffff, iobase);
  if (s->n_chan > 16)
   outw((s->state >> 16) & 0xffff, iobase + 2);
 }

 data[1] = s->state;

 return insn->n;
}
