
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9062_thermal {int zone; int work; int irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct da9062_thermal*) ;
 struct da9062_thermal* platform_get_drvdata (struct platform_device*) ;
 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static int da9062_thermal_remove(struct platform_device *pdev)
{
 struct da9062_thermal *thermal = platform_get_drvdata(pdev);

 free_irq(thermal->irq, thermal);
 cancel_delayed_work_sync(&thermal->work);
 thermal_zone_device_unregister(thermal->zone);
 return 0;
}
