
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int ACERHDF_TEMP_CRIT ;
 int EINVAL ;
 int fanon ;

__attribute__((used)) static int acerhdf_get_trip_temp(struct thermal_zone_device *thermal, int trip,
     int *temp)
{
 if (trip == 0)
  *temp = fanon;
 else if (trip == 1)
  *temp = ACERHDF_TEMP_CRIT;
 else
  return -EINVAL;

 return 0;
}
