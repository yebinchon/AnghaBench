
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; int n_chan; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int pcl730_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned long reg = (unsigned long)s->private;
 unsigned int mask;

 mask = comedi_dio_update_state(s, data);
 if (mask) {
  if (mask & 0x00ff)
   outb(s->state & 0xff, dev->iobase + reg);
  if ((mask & 0xff00) && (s->n_chan > 8))
   outb((s->state >> 8) & 0xff, dev->iobase + reg + 1);
  if ((mask & 0xff0000) && (s->n_chan > 16))
   outb((s->state >> 16) & 0xff, dev->iobase + reg + 2);
  if ((mask & 0xff000000) && (s->n_chan > 24))
   outb((s->state >> 24) & 0xff, dev->iobase + reg + 3);
 }

 data[1] = s->state;

 return insn->n;
}
