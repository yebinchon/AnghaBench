
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int EINVAL ;
 int fanoff ;
 int fanon ;

__attribute__((used)) static int acerhdf_get_trip_hyst(struct thermal_zone_device *thermal, int trip,
     int *temp)
{
 if (trip != 0)
  return -EINVAL;

 *temp = fanon - fanoff;

 return 0;
}
