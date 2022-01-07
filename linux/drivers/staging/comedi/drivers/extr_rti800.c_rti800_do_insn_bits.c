
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ RTI800_DO ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int rti800_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 if (comedi_dio_update_state(s, data)) {

  outb(s->state ^ 0xff, dev->iobase + RTI800_DO);
 }

 data[1] = s->state;

 return insn->n;
}
