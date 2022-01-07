
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int sensor_data; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_temp ) (int ,int*) ;} ;


 int EINVAL ;
 int stub1 (int ,int*) ;

__attribute__((used)) static int of_thermal_get_temp(struct thermal_zone_device *tz,
          int *temp)
{
 struct __thermal_zone *data = tz->devdata;

 if (!data->ops->get_temp)
  return -EINVAL;

 return data->ops->get_temp(data->sensor_data, temp);
}
