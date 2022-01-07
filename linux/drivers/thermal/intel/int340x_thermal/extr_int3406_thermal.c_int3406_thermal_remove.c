
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct int3406_thermal_data {int br; int cooling_dev; } ;


 int kfree (int ) ;
 struct int3406_thermal_data* platform_get_drvdata (struct platform_device*) ;
 int thermal_cooling_device_unregister (int ) ;

__attribute__((used)) static int int3406_thermal_remove(struct platform_device *pdev)
{
 struct int3406_thermal_data *d = platform_get_drvdata(pdev);

 thermal_cooling_device_unregister(d->cooling_dev);
 kfree(d->br);
 return 0;
}
