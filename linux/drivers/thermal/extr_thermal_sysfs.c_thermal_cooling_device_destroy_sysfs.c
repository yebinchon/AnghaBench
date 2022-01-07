
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 int cooling_device_stats_destroy (struct thermal_cooling_device*) ;

void thermal_cooling_device_destroy_sysfs(struct thermal_cooling_device *cdev)
{
 cooling_device_stats_destroy(cdev);
}
