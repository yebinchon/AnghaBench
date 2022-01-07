
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;
 scalar_t__ kernelmode ;
 int pr_notice (char*,scalar_t__) ;
 scalar_t__ verbose ;

__attribute__((used)) static int acerhdf_get_mode(struct thermal_zone_device *thermal,
       enum thermal_device_mode *mode)
{
 if (verbose)
  pr_notice("kernel mode fan control %d\n", kernelmode);

 *mode = (kernelmode) ? THERMAL_DEVICE_ENABLED
        : THERMAL_DEVICE_DISABLED;

 return 0;
}
