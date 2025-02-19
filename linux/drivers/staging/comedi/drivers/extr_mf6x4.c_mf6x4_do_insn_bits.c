
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ MF6X4_DOUT_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int iowrite16 (unsigned int,scalar_t__) ;

__attribute__((used)) static int mf6x4_do_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  iowrite16(s->state, dev->mmio + MF6X4_DOUT_REG);

 data[1] = s->state;

 return insn->n;
}
