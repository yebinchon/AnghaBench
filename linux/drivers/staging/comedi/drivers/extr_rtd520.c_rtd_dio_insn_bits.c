
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ LAS0_DIO0 ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int rtd_dio_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  writew(s->state & 0xff, dev->mmio + LAS0_DIO0);

 data[1] = readw(dev->mmio + LAS0_DIO0) & 0xff;

 return insn->n;
}
