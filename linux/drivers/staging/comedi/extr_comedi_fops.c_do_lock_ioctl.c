
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int spin_lock; void* lock; scalar_t__ busy; } ;
struct comedi_device {unsigned long n_subdevices; struct comedi_subdevice* subdevices; int mutex; } ;


 int EBUSY ;
 int EINVAL ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int do_lock_ioctl(struct comedi_device *dev, unsigned long arg,
    void *file)
{
 int ret = 0;
 unsigned long flags;
 struct comedi_subdevice *s;

 lockdep_assert_held(&dev->mutex);
 if (arg >= dev->n_subdevices)
  return -EINVAL;
 s = &dev->subdevices[arg];

 spin_lock_irqsave(&s->spin_lock, flags);
 if (s->busy || s->lock)
  ret = -EBUSY;
 else
  s->lock = file;
 spin_unlock_irqrestore(&s->spin_lock, flags);

 return ret;
}
