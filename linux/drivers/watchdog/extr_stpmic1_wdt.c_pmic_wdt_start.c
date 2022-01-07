
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct stpmic1_wdt {TYPE_1__* pmic; } ;
struct TYPE_2__ {int regmap; } ;


 int WCHDG_CR ;
 int WDT_START ;
 int WDT_START_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct stpmic1_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pmic_wdt_start(struct watchdog_device *wdd)
{
 struct stpmic1_wdt *wdt = watchdog_get_drvdata(wdd);

 return regmap_update_bits(wdt->pmic->regmap,
      WCHDG_CR, WDT_START_MASK, WDT_START);
}
