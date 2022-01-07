
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int sensor_data; TYPE_1__* ops; } ;
typedef enum thermal_trend { ____Placeholder_thermal_trend } thermal_trend ;
struct TYPE_2__ {int (* get_trend ) (int ,int,int*) ;} ;


 int EINVAL ;
 int stub1 (int ,int,int*) ;

__attribute__((used)) static int of_thermal_get_trend(struct thermal_zone_device *tz, int trip,
    enum thermal_trend *trend)
{
 struct __thermal_zone *data = tz->devdata;

 if (!data->ops->get_trend)
  return -EINVAL;

 return data->ops->get_trend(data->sensor_data, trip, trend);
}
