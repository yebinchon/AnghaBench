
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_driver {int (* probe ) (struct visor_device*) ;} ;
struct visor_device {int being_removed; int visordriver_callback_lock; int device; } ;
struct device {int driver; } ;


 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int publish_vbus_dev_info (struct visor_device*) ;
 int stub1 (struct visor_device*) ;
 struct visor_device* to_visor_device (struct device*) ;
 struct visor_driver* to_visor_driver (int ) ;

__attribute__((used)) static int visordriver_probe_device(struct device *xdev)
{
 int err;
 struct visor_driver *drv = to_visor_driver(xdev->driver);
 struct visor_device *dev = to_visor_device(xdev);

 mutex_lock(&dev->visordriver_callback_lock);
 dev->being_removed = 0;
 err = drv->probe(dev);
 if (err) {
  mutex_unlock(&dev->visordriver_callback_lock);
  return err;
 }

 get_device(&dev->device);
 publish_vbus_dev_info(dev);
 mutex_unlock(&dev->visordriver_callback_lock);
 return 0;
}
