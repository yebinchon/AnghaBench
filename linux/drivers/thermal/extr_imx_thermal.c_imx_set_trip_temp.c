
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct imx_thermal_data* devdata; } ;
struct imx_thermal_data {int temp_critical; int temp_passive; } ;


 int EINVAL ;
 int EPERM ;
 int IMX_TRIP_CRITICAL ;
 int imx_set_alarm_temp (struct imx_thermal_data*,int) ;

__attribute__((used)) static int imx_set_trip_temp(struct thermal_zone_device *tz, int trip,
        int temp)
{
 struct imx_thermal_data *data = tz->devdata;


 if (trip == IMX_TRIP_CRITICAL)
  return -EPERM;


 if (temp < 0 || temp > data->temp_critical)
  return -EINVAL;

 data->temp_passive = temp;

 imx_set_alarm_temp(data, temp);

 return 0;
}
