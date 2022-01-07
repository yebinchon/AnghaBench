
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das800_private {int do_bits; } ;
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int spinlock; struct das800_private* private; } ;


 int CONTROL1 ;
 int CONTROL1_INTE ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int das800_ind_write (struct comedi_device*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das800_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct das800_private *devpriv = dev->private;
 unsigned long irq_flags;

 if (comedi_dio_update_state(s, data)) {
  devpriv->do_bits = s->state << 4;

  spin_lock_irqsave(&dev->spinlock, irq_flags);
  das800_ind_write(dev, CONTROL1_INTE | devpriv->do_bits,
     CONTROL1);
  spin_unlock_irqrestore(&dev->spinlock, irq_flags);
 }

 data[1] = s->state;

 return insn->n;
}
