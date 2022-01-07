
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int groups; } ;
struct thermal_cooling_device {TYPE_1__ device; } ;


 int cooling_device_attr_groups ;
 int cooling_device_stats_setup (struct thermal_cooling_device*) ;

void thermal_cooling_device_setup_sysfs(struct thermal_cooling_device *cdev)
{
 cooling_device_stats_setup(cdev);
 cdev->device.groups = cooling_device_attr_groups;
}
