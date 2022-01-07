
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct platform_device {int dummy; } ;


 struct thermal_zone_device* platform_get_drvdata (struct platform_device*) ;
 int thermal_zone_device_unregister (struct thermal_zone_device*) ;

__attribute__((used)) static int kirkwood_thermal_exit(struct platform_device *pdev)
{
 struct thermal_zone_device *kirkwood_thermal =
  platform_get_drvdata(pdev);

 thermal_zone_device_unregister(kirkwood_thermal);

 return 0;
}
