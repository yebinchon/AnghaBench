
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct apci2032_int_private* private; } ;
struct comedi_device {int dummy; } ;
struct apci2032_int_private {int spinlock; scalar_t__ active; } ;


 int apci2032_int_stop (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int apci2032_int_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 struct apci2032_int_private *subpriv = s->private;
 unsigned long flags;

 spin_lock_irqsave(&subpriv->spinlock, flags);
 if (subpriv->active)
  apci2032_int_stop(dev, s);
 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 return 0;
}
