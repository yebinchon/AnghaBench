
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorinput_devdata {int visorinput_dev; int lock_visor_dev; } ;
struct visor_device {int device; } ;


 struct visorinput_devdata* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct visorinput_devdata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_client_input (int ) ;
 int visorbus_disable_channel_interrupts (struct visor_device*) ;

__attribute__((used)) static void visorinput_remove(struct visor_device *dev)
{
 struct visorinput_devdata *devdata = dev_get_drvdata(&dev->device);

 if (!devdata)
  return;

 mutex_lock(&devdata->lock_visor_dev);
 visorbus_disable_channel_interrupts(dev);






 dev_set_drvdata(&dev->device, ((void*)0));
 mutex_unlock(&devdata->lock_visor_dev);

 unregister_client_input(devdata->visorinput_dev);
 kfree(devdata);
}
