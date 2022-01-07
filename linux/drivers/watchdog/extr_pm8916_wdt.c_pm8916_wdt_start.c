
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct pm8916_wdt {scalar_t__ baseaddr; int regmap; } ;


 scalar_t__ PON_PMIC_WD_RESET_S2_CTL2 ;
 int S2_RESET_EN_BIT ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 struct pm8916_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pm8916_wdt_start(struct watchdog_device *wdev)
{
 struct pm8916_wdt *wdt = watchdog_get_drvdata(wdev);

 return regmap_update_bits(wdt->regmap,
      wdt->baseaddr + PON_PMIC_WD_RESET_S2_CTL2,
      S2_RESET_EN_BIT, S2_RESET_EN_BIT);
}
