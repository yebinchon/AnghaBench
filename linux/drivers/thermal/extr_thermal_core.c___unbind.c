
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int trips; } ;
struct thermal_cooling_device {int dummy; } ;


 int thermal_zone_unbind_cooling_device (struct thermal_zone_device*,int,struct thermal_cooling_device*) ;

__attribute__((used)) static void __unbind(struct thermal_zone_device *tz, int mask,
       struct thermal_cooling_device *cdev)
{
 int i;

 for (i = 0; i < tz->trips; i++)
  if (mask & (1 << i))
   thermal_zone_unbind_cooling_device(tz, i, cdev);
}
