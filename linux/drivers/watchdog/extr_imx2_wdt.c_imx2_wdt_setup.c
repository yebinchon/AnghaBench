
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct imx2_wdt_device {int regmap; int ext_reset; } ;


 int IMX2_WDT_WCR ;
 int IMX2_WDT_WCR_WDE ;
 int IMX2_WDT_WCR_WDZST ;
 int IMX2_WDT_WCR_WRE ;
 int IMX2_WDT_WCR_WT ;
 int WDOG_SEC_TO_COUNT (int ) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static inline void imx2_wdt_setup(struct watchdog_device *wdog)
{
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
 u32 val;

 regmap_read(wdev->regmap, IMX2_WDT_WCR, &val);


 val |= IMX2_WDT_WCR_WDZST;

 val &= ~IMX2_WDT_WCR_WT;

 if (!wdev->ext_reset)
  val &= ~IMX2_WDT_WCR_WRE;

 else
  val |= IMX2_WDT_WCR_WRE;

 val &= ~IMX2_WDT_WCR_WDE;

 val |= WDOG_SEC_TO_COUNT(wdog->timeout);

 regmap_write(wdev->regmap, IMX2_WDT_WCR, val);


 val |= IMX2_WDT_WCR_WDE;
 regmap_write(wdev->regmap, IMX2_WDT_WCR, val);
}
