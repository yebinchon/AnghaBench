
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ async; scalar_t__ busy; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int attached; int mutex; } ;


 scalar_t__ comedi_buf_is_mmapped (struct comedi_subdevice*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int is_device_busy(struct comedi_device *dev)
{
 struct comedi_subdevice *s;
 int i;

 lockdep_assert_held(&dev->mutex);
 if (!dev->attached)
  return 0;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  if (s->busy)
   return 1;
  if (s->async && comedi_buf_is_mmapped(s))
   return 1;
 }

 return 0;
}
