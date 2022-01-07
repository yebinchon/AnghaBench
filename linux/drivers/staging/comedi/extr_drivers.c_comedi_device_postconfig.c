
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int attached; int attach_lock; int mutex; } ;


 int __comedi_device_postconfig (struct comedi_device*) ;
 int down_write (int *) ;
 int lockdep_assert_held (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int comedi_device_postconfig(struct comedi_device *dev)
{
 int ret;

 lockdep_assert_held(&dev->mutex);
 ret = __comedi_device_postconfig(dev);
 if (ret < 0)
  return ret;
 down_write(&dev->attach_lock);
 dev->attached = 1;
 up_write(&dev->attach_lock);
 return 0;
}
