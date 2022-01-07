
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ pretimeout; scalar_t__ timeout; } ;
struct pm8916_wdt {scalar_t__ baseaddr; int regmap; } ;


 scalar_t__ PON_PMIC_WD_RESET_S1_TIMER ;
 scalar_t__ PON_PMIC_WD_RESET_S2_TIMER ;
 int regmap_write (int ,scalar_t__,scalar_t__) ;
 struct pm8916_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pm8916_wdt_configure_timers(struct watchdog_device *wdev)
{
 struct pm8916_wdt *wdt = watchdog_get_drvdata(wdev);
 int err;

 err = regmap_write(wdt->regmap,
      wdt->baseaddr + PON_PMIC_WD_RESET_S1_TIMER,
      wdev->timeout - wdev->pretimeout);
 if (err)
  return err;

 return regmap_write(wdt->regmap,
       wdt->baseaddr + PON_PMIC_WD_RESET_S2_TIMER,
       wdev->pretimeout);
}
