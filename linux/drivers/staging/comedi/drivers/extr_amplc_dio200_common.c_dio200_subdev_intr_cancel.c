
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {int spinlock; scalar_t__ active; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;


 int dio200_stop_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dio200_subdev_intr_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct dio200_subdev_intr *subpriv = s->private;
 unsigned long flags;

 spin_lock_irqsave(&subpriv->spinlock, flags);
 if (subpriv->active)
  dio200_stop_intr(dev, s);

 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 return 0;
}
