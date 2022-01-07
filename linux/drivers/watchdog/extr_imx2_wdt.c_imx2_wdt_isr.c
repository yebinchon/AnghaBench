
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct imx2_wdt_device {int regmap; } ;
typedef int irqreturn_t ;


 int IMX2_WDT_WICR ;
 int IMX2_WDT_WICR_WTIS ;
 int IRQ_HANDLED ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int watchdog_notify_pretimeout (struct watchdog_device*) ;

__attribute__((used)) static irqreturn_t imx2_wdt_isr(int irq, void *wdog_arg)
{
 struct watchdog_device *wdog = wdog_arg;
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);

 regmap_write_bits(wdev->regmap, IMX2_WDT_WICR,
     IMX2_WDT_WICR_WTIS, IMX2_WDT_WICR_WTIS);

 watchdog_notify_pretimeout(wdog);

 return IRQ_HANDLED;
}
