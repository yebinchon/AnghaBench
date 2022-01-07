
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {int cr; } ;
struct stm32_rtc {int dbp_mask; int dbp_reg; int dbp; TYPE_1__* data; int pclk; int rtc_ck; scalar_t__ base; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ need_dbp; scalar_t__ has_pclk; struct stm32_rtc_registers regs; } ;


 unsigned int STM32_RTC_CR_ALRAIE ;
 int clk_disable_unprepare (int ) ;
 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 struct stm32_rtc* platform_get_drvdata (struct platform_device*) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int stm32_rtc_wpr_lock (struct stm32_rtc*) ;
 int stm32_rtc_wpr_unlock (struct stm32_rtc*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int stm32_rtc_remove(struct platform_device *pdev)
{
 struct stm32_rtc *rtc = platform_get_drvdata(pdev);
 const struct stm32_rtc_registers *regs = &rtc->data->regs;
 unsigned int cr;


 stm32_rtc_wpr_unlock(rtc);
 cr = readl_relaxed(rtc->base + regs->cr);
 cr &= ~STM32_RTC_CR_ALRAIE;
 writel_relaxed(cr, rtc->base + regs->cr);
 stm32_rtc_wpr_lock(rtc);

 clk_disable_unprepare(rtc->rtc_ck);
 if (rtc->data->has_pclk)
  clk_disable_unprepare(rtc->pclk);


 if (rtc->data->need_dbp)
  regmap_update_bits(rtc->dbp, rtc->dbp_reg, rtc->dbp_mask, 0);

 dev_pm_clear_wake_irq(&pdev->dev);
 device_init_wakeup(&pdev->dev, 0);

 return 0;
}
