
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int pretimeout; } ;
struct imx2_wdt_device {int regmap; } ;


 int EINVAL ;
 unsigned int IMX2_WDT_MAX_TIME ;
 int IMX2_WDT_WICR ;
 unsigned int IMX2_WDT_WICR_WICT ;
 unsigned int IMX2_WDT_WICR_WIE ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int imx2_wdt_set_pretimeout(struct watchdog_device *wdog,
       unsigned int new_pretimeout)
{
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);

 if (new_pretimeout >= IMX2_WDT_MAX_TIME)
  return -EINVAL;

 wdog->pretimeout = new_pretimeout;

 regmap_update_bits(wdev->regmap, IMX2_WDT_WICR,
      IMX2_WDT_WICR_WIE | IMX2_WDT_WICR_WICT,
      IMX2_WDT_WICR_WIE | (new_pretimeout << 1));
 return 0;
}
