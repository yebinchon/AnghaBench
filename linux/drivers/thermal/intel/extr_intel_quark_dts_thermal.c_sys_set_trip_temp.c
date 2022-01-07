
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int devdata; } ;


 int update_trip_temp (int ,int,int) ;

__attribute__((used)) static inline int sys_set_trip_temp(struct thermal_zone_device *tzd, int trip,
    int temp)
{
 return update_trip_temp(tzd->devdata, trip, temp);
}
