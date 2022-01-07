
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_thermal_data {int dummy; } ;
struct thermal_zone_device {struct ti_thermal_data* devdata; } ;


 int __ti_thermal_get_temp (struct ti_thermal_data*,int*) ;

__attribute__((used)) static inline int ti_thermal_get_temp(struct thermal_zone_device *thermal,
          int *temp)
{
 struct ti_thermal_data *data = thermal->devdata;

 return __ti_thermal_get_temp(data, temp);
}
