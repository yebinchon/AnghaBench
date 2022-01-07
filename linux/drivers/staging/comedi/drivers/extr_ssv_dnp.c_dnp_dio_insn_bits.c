
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int CSCDR ;
 int CSCIR ;
 int PADR ;
 int PBDR ;
 int PCDR ;
 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static int dnp_dio_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned int mask;
 unsigned int val;







 mask = comedi_dio_update_state(s, data);
 if (mask) {
  outb(PADR, CSCIR);
  outb(s->state & 0xff, CSCDR);

  outb(PBDR, CSCIR);
  outb((s->state >> 8) & 0xff, CSCDR);

  outb(PCDR, CSCIR);
  val = inb(CSCDR) & 0x0f;
  outb(((s->state >> 12) & 0xf0) | val, CSCDR);
 }

 outb(PADR, CSCIR);
 val = inb(CSCDR);
 outb(PBDR, CSCIR);
 val |= (inb(CSCDR) << 8);
 outb(PCDR, CSCIR);
 val |= ((inb(CSCDR) & 0xf0) << 12);

 data[1] = val;

 return insn->n;
}
