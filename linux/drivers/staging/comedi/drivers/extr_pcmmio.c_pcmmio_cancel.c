
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmmio_private {int spinlock; scalar_t__ active; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcmmio_private* private; } ;


 int pcmmio_stop_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcmmio_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcmmio_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->spinlock, flags);
 if (devpriv->active)
  pcmmio_stop_intr(dev, s);
 spin_unlock_irqrestore(&devpriv->spinlock, flags);

 return 0;
}
