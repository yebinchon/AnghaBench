
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int ntrips; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct __thermal_zone*) ;

int of_thermal_get_ntrips(struct thermal_zone_device *tz)
{
 struct __thermal_zone *data = tz->devdata;

 if (!data || IS_ERR(data))
  return -ENODEV;

 return data->ntrips;
}
