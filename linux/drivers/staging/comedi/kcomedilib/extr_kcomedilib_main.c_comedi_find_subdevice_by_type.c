
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int type; } ;
struct comedi_device {unsigned int n_subdevices; int attach_lock; struct comedi_subdevice* subdevices; scalar_t__ attached; } ;


 int ENODEV ;
 int down_read (int *) ;
 int up_read (int *) ;

int comedi_find_subdevice_by_type(struct comedi_device *dev, int type,
      unsigned int subd)
{
 struct comedi_subdevice *s;
 int ret = -ENODEV;

 down_read(&dev->attach_lock);
 if (dev->attached)
  for (; subd < dev->n_subdevices; subd++) {
   s = &dev->subdevices[subd];
   if (s->type == type) {
    ret = subd;
    break;
   }
  }
 up_read(&dev->attach_lock);
 return ret;
}
