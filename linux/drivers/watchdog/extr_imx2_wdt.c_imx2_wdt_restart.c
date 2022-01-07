
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct imx2_wdt_device {int regmap; scalar_t__ ext_reset; } ;


 int IMX2_WDT_WCR ;
 unsigned int IMX2_WDT_WCR_SRS ;
 unsigned int IMX2_WDT_WCR_WDA ;
 unsigned int IMX2_WDT_WCR_WDE ;
 int mdelay (int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int imx2_wdt_restart(struct watchdog_device *wdog, unsigned long action,
       void *data)
{
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
 unsigned int wcr_enable = IMX2_WDT_WCR_WDE;


 if (wdev->ext_reset)
  wcr_enable |= IMX2_WDT_WCR_SRS;
 else
  wcr_enable |= IMX2_WDT_WCR_WDA;


 regmap_write(wdev->regmap, IMX2_WDT_WCR, wcr_enable);







 regmap_write(wdev->regmap, IMX2_WDT_WCR, wcr_enable);
 regmap_write(wdev->regmap, IMX2_WDT_WCR, wcr_enable);


 mdelay(500);

 return 0;
}
