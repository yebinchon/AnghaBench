
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct imx2_wdt_device {int regmap; } ;


 int IMX2_WDT_WCR ;
 int IMX2_WDT_WCR_WT ;
 int WDOG_SEC_TO_COUNT (unsigned int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static void __imx2_wdt_set_timeout(struct watchdog_device *wdog,
       unsigned int new_timeout)
{
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);

 regmap_update_bits(wdev->regmap, IMX2_WDT_WCR, IMX2_WDT_WCR_WT,
      WDOG_SEC_TO_COUNT(new_timeout));
}
