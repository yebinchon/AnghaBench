
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;
struct device {int dummy; } ;


 int thermal_cooling_device_unregister (struct thermal_cooling_device*) ;

__attribute__((used)) static void thermal_cooling_device_release(struct device *dev, void *res)
{
 thermal_cooling_device_unregister(
    *(struct thermal_cooling_device **)res);
}
