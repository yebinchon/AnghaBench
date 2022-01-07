
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_thermal_sensor {int th_dev; } ;
struct platform_device {int dev; } ;


 struct stm_thermal_sensor* platform_get_drvdata (struct platform_device*) ;
 int stm_thermal_sensor_off (struct stm_thermal_sensor*) ;
 int thermal_remove_hwmon_sysfs (int ) ;
 int thermal_zone_of_sensor_unregister (int *,int ) ;

__attribute__((used)) static int stm_thermal_remove(struct platform_device *pdev)
{
 struct stm_thermal_sensor *sensor = platform_get_drvdata(pdev);

 stm_thermal_sensor_off(sensor);
 thermal_remove_hwmon_sysfs(sensor->th_dev);
 thermal_zone_of_sensor_unregister(&pdev->dev, sensor->th_dev);

 return 0;
}
