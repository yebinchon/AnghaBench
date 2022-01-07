
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;



__attribute__((used)) static int int3400_thermal_get_temp(struct thermal_zone_device *thermal,
   int *temp)
{
 *temp = 20 * 1000;
 return 0;
}
