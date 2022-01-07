
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int spin_lock; } ;


 int __comedi_clear_subdevice_runflags (struct comedi_subdevice*,unsigned int) ;
 int __comedi_set_subdevice_runflags (struct comedi_subdevice*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void comedi_update_subdevice_runflags(struct comedi_subdevice *s,
          unsigned int mask,
          unsigned int bits)
{
 unsigned long flags;

 spin_lock_irqsave(&s->spin_lock, flags);
 __comedi_clear_subdevice_runflags(s, mask);
 __comedi_set_subdevice_runflags(s, bits & mask);
 spin_unlock_irqrestore(&s->spin_lock, flags);
}
