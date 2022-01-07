
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int attached; int attach_lock; TYPE_1__* driver; int detach_count; int mutex; } ;
struct TYPE_2__ {int (* detach ) (struct comedi_device*) ;} ;


 int comedi_device_cancel_all (struct comedi_device*) ;
 int comedi_device_detach_cleanup (struct comedi_device*) ;
 int down_write (int *) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct comedi_device*) ;
 int up_write (int *) ;

void comedi_device_detach(struct comedi_device *dev)
{
 lockdep_assert_held(&dev->mutex);
 comedi_device_cancel_all(dev);
 down_write(&dev->attach_lock);
 dev->attached = 0;
 dev->detach_count++;
 if (dev->driver)
  dev->driver->detach(dev);
 comedi_device_detach_cleanup(dev);
 up_write(&dev->attach_lock);
}
