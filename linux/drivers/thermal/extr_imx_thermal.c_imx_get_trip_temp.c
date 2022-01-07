
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct imx_thermal_data* devdata; } ;
struct imx_thermal_data {int temp_passive; int temp_critical; } ;


 int IMX_TRIP_PASSIVE ;

__attribute__((used)) static int imx_get_trip_temp(struct thermal_zone_device *tz, int trip,
        int *temp)
{
 struct imx_thermal_data *data = tz->devdata;

 *temp = (trip == IMX_TRIP_PASSIVE) ? data->temp_passive :
          data->temp_critical;
 return 0;
}
