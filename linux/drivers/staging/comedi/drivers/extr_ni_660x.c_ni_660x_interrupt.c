
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int interrupt_lock; } ;
struct comedi_subdevice {scalar_t__ type; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; int attached; struct ni_660x_private* private; } ;
typedef int irqreturn_t ;


 scalar_t__ COMEDI_SUBD_COUNTER ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ni_660x_handle_gpct_interrupt (struct comedi_device*,struct comedi_subdevice*) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ni_660x_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct ni_660x_private *devpriv = dev->private;
 struct comedi_subdevice *s;
 unsigned int i;
 unsigned long flags;

 if (!dev->attached)
  return IRQ_NONE;

 smp_mb();


 spin_lock_irqsave(&devpriv->interrupt_lock, flags);
 for (i = 0; i < dev->n_subdevices; ++i) {
  s = &dev->subdevices[i];
  if (s->type == COMEDI_SUBD_COUNTER)
   ni_660x_handle_gpct_interrupt(dev, s);
 }
 spin_unlock_irqrestore(&devpriv->interrupt_lock, flags);
 return IRQ_HANDLED;
}
