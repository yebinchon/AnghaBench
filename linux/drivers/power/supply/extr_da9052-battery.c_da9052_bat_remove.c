
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9052_battery {int psy; int da9052; } ;


 int ARRAY_SIZE (int ) ;
 int * da9052_bat_irq_bits ;
 int da9052_bat_irqs ;
 int da9052_free_irq (int ,int ,struct da9052_battery*) ;
 struct da9052_battery* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int da9052_bat_remove(struct platform_device *pdev)
{
 int i;
 struct da9052_battery *bat = platform_get_drvdata(pdev);

 for (i = 0; i < ARRAY_SIZE(da9052_bat_irqs); i++)
  da9052_free_irq(bat->da9052, da9052_bat_irq_bits[i], bat);

 power_supply_unregister(bat->psy);

 return 0;
}
