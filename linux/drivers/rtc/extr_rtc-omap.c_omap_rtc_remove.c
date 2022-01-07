
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dev; } ;
struct omap_rtc {int pctldev; TYPE_1__* type; scalar_t__ has_ext_clk; int clk; } ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;int (* unlock ) (struct omap_rtc*) ;} ;


 int IS_ERR (int ) ;
 int OMAP_RTC_INTERRUPTS_REG ;
 int OMAP_RTC_OSC_REG ;
 int OMAP_RTC_OSC_SEL_32KCLK_SRC ;
 int clk_disable_unprepare (int ) ;
 int device_init_wakeup (int *,int ) ;
 int * omap_rtc_power_off ;
 struct omap_rtc* omap_rtc_power_off_rtc ;
 int pinctrl_unregister (int ) ;
 struct omap_rtc* platform_get_drvdata (struct platform_device*) ;
 int * pm_power_off ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int rtc_read (struct omap_rtc*,int ) ;
 int rtc_write (struct omap_rtc*,int ,int ) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;

__attribute__((used)) static int omap_rtc_remove(struct platform_device *pdev)
{
 struct omap_rtc *rtc = platform_get_drvdata(pdev);
 u8 reg;

 if (pm_power_off == omap_rtc_power_off &&
   omap_rtc_power_off_rtc == rtc) {
  pm_power_off = ((void*)0);
  omap_rtc_power_off_rtc = ((void*)0);
 }

 device_init_wakeup(&pdev->dev, 0);

 if (!IS_ERR(rtc->clk))
  clk_disable_unprepare(rtc->clk);

 rtc->type->unlock(rtc);

 rtc_write(rtc, OMAP_RTC_INTERRUPTS_REG, 0);

 if (rtc->has_ext_clk) {
  reg = rtc_read(rtc, OMAP_RTC_OSC_REG);
  reg &= ~OMAP_RTC_OSC_SEL_32KCLK_SRC;
  rtc_write(rtc, OMAP_RTC_OSC_REG, reg);
 }

 rtc->type->lock(rtc);


 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);


 pinctrl_unregister(rtc->pctldev);

 return 0;
}
