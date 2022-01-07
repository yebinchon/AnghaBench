
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_thermal_sensor {int thermal_dev; } ;
struct platform_device {int dummy; } ;


 struct st_thermal_sensor* platform_get_drvdata (struct platform_device*) ;
 int st_thermal_sensor_off (struct st_thermal_sensor*) ;
 int thermal_zone_device_unregister (int ) ;

int st_thermal_unregister(struct platform_device *pdev)
{
 struct st_thermal_sensor *sensor = platform_get_drvdata(pdev);

 st_thermal_sensor_off(sensor);
 thermal_zone_device_unregister(sensor->thermal_dev);

 return 0;
}
