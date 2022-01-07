
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ async; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int attached; int mutex; } ;


 int do_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int lockdep_assert_held (int *) ;

void comedi_device_cancel_all(struct comedi_device *dev)
{
 struct comedi_subdevice *s;
 int i;

 lockdep_assert_held(&dev->mutex);
 if (!dev->attached)
  return;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  if (s->async)
   do_cancel(dev, s);
 }
}
