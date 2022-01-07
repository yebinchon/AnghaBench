
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct thermal_instance {unsigned long target; int tz; } ;
struct thermal_cooling_device {int updated; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power2state ) (struct thermal_cooling_device*,int ,int ,unsigned long*) ;} ;


 int EINVAL ;
 int cdev_is_power_actor (struct thermal_cooling_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct thermal_cooling_device*,int ,int ,unsigned long*) ;
 int thermal_cdev_update (struct thermal_cooling_device*) ;

int power_actor_set_power(struct thermal_cooling_device *cdev,
     struct thermal_instance *instance, u32 power)
{
 unsigned long state;
 int ret;

 if (!cdev_is_power_actor(cdev))
  return -EINVAL;

 ret = cdev->ops->power2state(cdev, instance->tz, power, &state);
 if (ret)
  return ret;

 instance->target = state;
 mutex_lock(&cdev->lock);
 cdev->updated = 0;
 mutex_unlock(&cdev->lock);
 thermal_cdev_update(cdev);

 return 0;
}
