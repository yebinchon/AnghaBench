
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {void* lock; scalar_t__ busy; } ;
struct comedi_device {unsigned long n_subdevices; struct comedi_subdevice* subdevices; int mutex; } ;


 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int do_unlock_ioctl(struct comedi_device *dev, unsigned long arg,
      void *file)
{
 struct comedi_subdevice *s;

 lockdep_assert_held(&dev->mutex);
 if (arg >= dev->n_subdevices)
  return -EINVAL;
 s = &dev->subdevices[arg];

 if (s->busy)
  return -EBUSY;

 if (s->lock && s->lock != file)
  return -EACCES;

 if (s->lock == file)
  s->lock = ((void*)0);

 return 0;
}
