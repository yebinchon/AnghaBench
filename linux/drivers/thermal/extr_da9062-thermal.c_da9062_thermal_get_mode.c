
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct da9062_thermal* devdata; } ;
struct da9062_thermal {int mode; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;



__attribute__((used)) static int da9062_thermal_get_mode(struct thermal_zone_device *z,
       enum thermal_device_mode *mode)
{
 struct da9062_thermal *thermal = z->devdata;
 *mode = thermal->mode;
 return 0;
}
