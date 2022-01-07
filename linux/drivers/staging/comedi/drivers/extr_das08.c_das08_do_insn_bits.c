
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das08_private_struct {int do_mux_bits; } ;
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; struct das08_private_struct* private; } ;


 int DAS08_CONTROL_DO (unsigned int) ;
 int DAS08_CONTROL_DO_MASK ;
 scalar_t__ DAS08_CONTROL_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int das08_do_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 struct das08_private_struct *devpriv = dev->private;

 if (comedi_dio_update_state(s, data)) {

  spin_lock(&dev->spinlock);
  devpriv->do_mux_bits &= ~DAS08_CONTROL_DO_MASK;
  devpriv->do_mux_bits |= DAS08_CONTROL_DO(s->state);
  outb(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL_REG);
  spin_unlock(&dev->spinlock);
 }

 data[1] = s->state;

 return insn->n;
}
