
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int ACERHDF_TEMP_CRIT ;

__attribute__((used)) static int acerhdf_get_crit_temp(struct thermal_zone_device *thermal,
     int *temperature)
{
 *temperature = ACERHDF_TEMP_CRIT;
 return 0;
}
