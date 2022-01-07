
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int trips; } ;
struct thermal_cooling_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_max_state ) (struct thermal_cooling_device*,unsigned long*) ;} ;


 int stub1 (struct thermal_cooling_device*,unsigned long*) ;

__attribute__((used)) static long get_target_state(struct thermal_zone_device *tz,
  struct thermal_cooling_device *cdev, int percentage, int level)
{
 unsigned long max_state;

 cdev->ops->get_max_state(cdev, &max_state);

 return (long)(percentage * level * max_state) / (100 * tz->trips);
}
