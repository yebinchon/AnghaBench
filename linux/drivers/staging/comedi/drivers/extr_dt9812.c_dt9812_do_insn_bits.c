
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int dt9812_digital_out (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int dt9812_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  dt9812_digital_out(dev, s->state);

 data[1] = s->state;

 return insn->n;
}
