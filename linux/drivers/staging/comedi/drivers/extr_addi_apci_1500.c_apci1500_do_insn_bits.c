
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct apci1500_private* private; } ;
struct apci1500_private {scalar_t__ addon; } ;


 scalar_t__ APCI1500_DO_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int apci1500_do_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct apci1500_private *devpriv = dev->private;

 if (comedi_dio_update_state(s, data))
  outw(s->state, devpriv->addon + APCI1500_DO_REG);

 data[1] = s->state;

 return insn->n;
}
