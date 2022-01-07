
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int _get_trip_temp (int,int*) ;

__attribute__((used)) static inline int sys_get_trip_temp(struct thermal_zone_device *tzd,
    int trip, int *temp)
{
 return _get_trip_temp(trip, temp);
}
