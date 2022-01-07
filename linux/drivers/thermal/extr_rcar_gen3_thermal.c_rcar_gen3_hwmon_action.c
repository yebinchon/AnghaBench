
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int thermal_remove_hwmon_sysfs (struct thermal_zone_device*) ;

__attribute__((used)) static void rcar_gen3_hwmon_action(void *data)
{
 struct thermal_zone_device *zone = data;

 thermal_remove_hwmon_sysfs(zone);
}
