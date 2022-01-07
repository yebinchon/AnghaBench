
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int trips; } ;
struct thermal_cooling_device {int dummy; } ;


 unsigned long THERMAL_NO_LIMIT ;
 int print_bind_err_msg (struct thermal_zone_device*,struct thermal_cooling_device*,int) ;
 int thermal_zone_bind_cooling_device (struct thermal_zone_device*,int,struct thermal_cooling_device*,unsigned long,unsigned long,unsigned int) ;

__attribute__((used)) static void __bind(struct thermal_zone_device *tz, int mask,
     struct thermal_cooling_device *cdev,
     unsigned long *limits,
     unsigned int weight)
{
 int i, ret;

 for (i = 0; i < tz->trips; i++) {
  if (mask & (1 << i)) {
   unsigned long upper, lower;

   upper = THERMAL_NO_LIMIT;
   lower = THERMAL_NO_LIMIT;
   if (limits) {
    lower = limits[i * 2];
    upper = limits[i * 2 + 1];
   }
   ret = thermal_zone_bind_cooling_device(tz, i, cdev,
              upper, lower,
              weight);
   if (ret)
    print_bind_err_msg(tz, cdev, ret);
  }
 }
}
