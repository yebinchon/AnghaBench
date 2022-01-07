
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum nd_async_mode { ____Placeholder_nd_async_mode } nd_async_mode ;




 int async_schedule_domain (int ,struct device*,int *) ;
 int device_unregister (struct device*) ;
 int get_device (struct device*) ;
 int kill_device (struct device*) ;
 int nd_async_device_unregister ;
 int nd_async_domain ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nd_synchronize () ;

void nd_device_unregister(struct device *dev, enum nd_async_mode mode)
{
 bool killed;

 switch (mode) {
 case 129:






  if (!kill_device(dev))
   return;

  get_device(dev);
  async_schedule_domain(nd_async_device_unregister, dev,
    &nd_async_domain);
  break;
 case 128:







  nd_device_lock(dev);
  killed = kill_device(dev);
  nd_device_unlock(dev);

  if (!killed)
   return;

  nd_synchronize();
  device_unregister(dev);
  break;
 }
}
