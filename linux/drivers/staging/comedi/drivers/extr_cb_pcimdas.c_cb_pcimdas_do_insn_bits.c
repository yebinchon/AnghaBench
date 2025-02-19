
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ BADR3; } ;


 scalar_t__ PCIMDAS_DI_DO_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_do_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct cb_pcimdas_private *devpriv = dev->private;

 if (comedi_dio_update_state(s, data))
  outb(s->state, devpriv->BADR3 + PCIMDAS_DI_DO_REG);

 data[1] = s->state;

 return insn->n;
}
