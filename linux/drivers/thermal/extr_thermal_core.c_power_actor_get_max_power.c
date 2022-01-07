
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct thermal_zone_device {int dummy; } ;
struct thermal_cooling_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* state2power ) (struct thermal_cooling_device*,struct thermal_zone_device*,int ,int *) ;} ;


 int EINVAL ;
 int cdev_is_power_actor (struct thermal_cooling_device*) ;
 int stub1 (struct thermal_cooling_device*,struct thermal_zone_device*,int ,int *) ;

int power_actor_get_max_power(struct thermal_cooling_device *cdev,
         struct thermal_zone_device *tz, u32 *max_power)
{
 if (!cdev_is_power_actor(cdev))
  return -EINVAL;

 return cdev->ops->state2power(cdev, tz, 0, max_power);
}
