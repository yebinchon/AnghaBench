
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int mode; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;



__attribute__((used)) static int of_thermal_get_mode(struct thermal_zone_device *tz,
          enum thermal_device_mode *mode)
{
 struct __thermal_zone *data = tz->devdata;

 *mode = data->mode;

 return 0;
}
