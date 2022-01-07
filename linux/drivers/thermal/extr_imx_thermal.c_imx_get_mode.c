
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct imx_thermal_data* devdata; } ;
struct imx_thermal_data {int mode; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;



__attribute__((used)) static int imx_get_mode(struct thermal_zone_device *tz,
   enum thermal_device_mode *mode)
{
 struct imx_thermal_data *data = tz->devdata;

 *mode = data->mode;

 return 0;
}
