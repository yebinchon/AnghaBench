
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; int attach_lock; int mutex; int spinlock; int refcount; } ;


 int init_rwsem (int *) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void comedi_device_init(struct comedi_device *dev)
{
 kref_init(&dev->refcount);
 spin_lock_init(&dev->spinlock);
 mutex_init(&dev->mutex);
 init_rwsem(&dev->attach_lock);
 dev->minor = -1;
}
