
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_driver {int (* remove ) (struct visor_device*) ;} ;
struct visor_device {int being_removed; int device; int visordriver_callback_lock; } ;
struct device {int driver; } ;


 int dev_stop_periodic_work (struct visor_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int stub1 (struct visor_device*) ;
 struct visor_device* to_visor_device (struct device*) ;
 struct visor_driver* to_visor_driver (int ) ;

__attribute__((used)) static int visordriver_remove_device(struct device *xdev)
{
 struct visor_device *dev = to_visor_device(xdev);
 struct visor_driver *drv = to_visor_driver(xdev->driver);

 mutex_lock(&dev->visordriver_callback_lock);
 dev->being_removed = 1;
 drv->remove(dev);
 mutex_unlock(&dev->visordriver_callback_lock);
 dev_stop_periodic_work(dev);
 put_device(&dev->device);
 return 0;
}
