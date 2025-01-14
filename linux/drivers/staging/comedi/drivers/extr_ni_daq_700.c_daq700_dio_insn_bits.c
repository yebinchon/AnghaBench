
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DIO_R ;
 scalar_t__ DIO_W ;
 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int daq700_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int mask;
 unsigned int val;

 mask = comedi_dio_update_state(s, data);
 if (mask) {
  if (mask & 0xff)
   outb(s->state & 0xff, dev->iobase + DIO_W);
 }

 val = s->state & 0xff;
 val |= inb(dev->iobase + DIO_R) << 8;

 data[1] = val;

 return insn->n;
}
