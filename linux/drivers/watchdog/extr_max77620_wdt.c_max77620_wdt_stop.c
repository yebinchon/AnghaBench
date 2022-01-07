
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct max77620_wdt {int rmap; } ;


 int MAX77620_REG_CNFGGLBL2 ;
 int MAX77620_WDTEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct max77620_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int max77620_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct max77620_wdt *wdt = watchdog_get_drvdata(wdt_dev);

 return regmap_update_bits(wdt->rmap, MAX77620_REG_CNFGGLBL2,
      MAX77620_WDTEN, 0);
}
