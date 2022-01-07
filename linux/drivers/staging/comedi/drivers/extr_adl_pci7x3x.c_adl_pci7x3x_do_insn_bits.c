
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; int n_chan; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int adl_pci7x3x_do_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned long reg = (unsigned long)s->private;

 if (comedi_dio_update_state(s, data)) {
  unsigned int val = s->state;

  if (s->n_chan == 16) {






   val |= val << 16;
  }
  outl(val, dev->iobase + reg);
 }

 data[1] = s->state;

 return insn->n;
}
