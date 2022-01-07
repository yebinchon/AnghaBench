
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct platform_device {int dev; } ;
struct bcm2835_thermal_data {int clk; int debugfsdir; struct thermal_zone_device* tz; } ;


 int clk_disable_unprepare (int ) ;
 int debugfs_remove_recursive (int ) ;
 struct bcm2835_thermal_data* platform_get_drvdata (struct platform_device*) ;
 int thermal_zone_of_sensor_unregister (int *,struct thermal_zone_device*) ;

__attribute__((used)) static int bcm2835_thermal_remove(struct platform_device *pdev)
{
 struct bcm2835_thermal_data *data = platform_get_drvdata(pdev);
 struct thermal_zone_device *tz = data->tz;

 debugfs_remove_recursive(data->debugfsdir);
 thermal_zone_of_sensor_unregister(&pdev->dev, tz);
 clk_disable_unprepare(data->clk);

 return 0;
}
