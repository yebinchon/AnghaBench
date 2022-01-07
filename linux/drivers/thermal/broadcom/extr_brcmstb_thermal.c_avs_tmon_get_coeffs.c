
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int thermal_zone_get_offset (struct thermal_zone_device*) ;
 int thermal_zone_get_slope (struct thermal_zone_device*) ;

__attribute__((used)) static void avs_tmon_get_coeffs(struct thermal_zone_device *tz, int *slope,
    int *offset)
{
 *slope = thermal_zone_get_slope(tz);
 *offset = thermal_zone_get_offset(tz);
}
