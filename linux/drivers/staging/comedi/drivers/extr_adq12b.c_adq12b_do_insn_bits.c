
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ ADQ12B_OUTBR ;
 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int adq12b_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int mask;
 unsigned int chan;
 unsigned int val;

 mask = comedi_dio_update_state(s, data);
 if (mask) {
  for (chan = 0; chan < 8; chan++) {
   if ((mask >> chan) & 0x01) {
    val = (s->state >> chan) & 0x01;
    outb((val << 3) | chan,
         dev->iobase + ADQ12B_OUTBR);
   }
  }
 }

 data[1] = s->state;

 return insn->n;
}
