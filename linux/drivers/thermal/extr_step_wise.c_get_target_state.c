
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_instance {unsigned long target; unsigned long upper; unsigned long lower; int initialized; struct thermal_cooling_device* cdev; } ;
struct thermal_cooling_device {int device; TYPE_1__* ops; } ;
typedef enum thermal_trend { ____Placeholder_thermal_trend } thermal_trend ;
struct TYPE_2__ {int (* get_cur_state ) (struct thermal_cooling_device*,unsigned long*) ;} ;


 unsigned long THERMAL_NO_TARGET ;




 int dev_dbg (int *,char*,unsigned long) ;
 int stub1 (struct thermal_cooling_device*,unsigned long*) ;

__attribute__((used)) static unsigned long get_target_state(struct thermal_instance *instance,
    enum thermal_trend trend, bool throttle)
{
 struct thermal_cooling_device *cdev = instance->cdev;
 unsigned long cur_state;
 unsigned long next_target;






 cdev->ops->get_cur_state(cdev, &cur_state);
 next_target = instance->target;
 dev_dbg(&cdev->device, "cur_state=%ld\n", cur_state);

 if (!instance->initialized) {
  if (throttle) {
   next_target = (cur_state + 1) >= instance->upper ?
     instance->upper :
     ((cur_state + 1) < instance->lower ?
     instance->lower : (cur_state + 1));
  } else {
   next_target = THERMAL_NO_TARGET;
  }

  return next_target;
 }

 switch (trend) {
 case 128:
  if (throttle) {
   next_target = cur_state < instance->upper ?
        (cur_state + 1) : instance->upper;
   if (next_target < instance->lower)
    next_target = instance->lower;
  }
  break;
 case 129:
  if (throttle)
   next_target = instance->upper;
  break;
 case 131:
  if (cur_state <= instance->lower) {
   if (!throttle)
    next_target = THERMAL_NO_TARGET;
  } else {
   if (!throttle) {
    next_target = cur_state - 1;
    if (next_target > instance->upper)
     next_target = instance->upper;
   }
  }
  break;
 case 130:
  if (cur_state == instance->lower) {
   if (!throttle)
    next_target = THERMAL_NO_TARGET;
  } else
   next_target = instance->lower;
  break;
 default:
  break;
 }

 return next_target;
}
