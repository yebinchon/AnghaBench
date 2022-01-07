
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ NI6527_DO_REG (int) ;
 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int ni6527_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int mask;

 mask = comedi_dio_update_state(s, data);
 if (mask) {

  unsigned int val = s->state ^ 0xffffff;

  if (mask & 0x0000ff)
   writeb(val & 0xff, dev->mmio + NI6527_DO_REG(0));
  if (mask & 0x00ff00)
   writeb((val >> 8) & 0xff,
          dev->mmio + NI6527_DO_REG(1));
  if (mask & 0xff0000)
   writeb((val >> 16) & 0xff,
          dev->mmio + NI6527_DO_REG(2));
 }

 data[1] = s->state;

 return insn->n;
}
