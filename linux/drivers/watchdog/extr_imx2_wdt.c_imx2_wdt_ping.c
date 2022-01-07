
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct imx2_wdt_device {int regmap; } ;


 int IMX2_WDT_SEQ1 ;
 int IMX2_WDT_SEQ2 ;
 int IMX2_WDT_WSR ;
 int regmap_write (int ,int ,int ) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int imx2_wdt_ping(struct watchdog_device *wdog)
{
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);

 regmap_write(wdev->regmap, IMX2_WDT_WSR, IMX2_WDT_SEQ1);
 regmap_write(wdev->regmap, IMX2_WDT_WSR, IMX2_WDT_SEQ2);
 return 0;
}
