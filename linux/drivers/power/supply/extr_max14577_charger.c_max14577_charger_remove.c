
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct max14577_charger {int charger; } ;


 int dev_attr_fast_charge_timer ;
 int device_remove_file (int *,int *) ;
 struct max14577_charger* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int max14577_charger_remove(struct platform_device *pdev)
{
 struct max14577_charger *chg = platform_get_drvdata(pdev);

 device_remove_file(&pdev->dev, &dev_attr_fast_charge_timer);
 power_supply_unregister(chg->charger);

 return 0;
}
