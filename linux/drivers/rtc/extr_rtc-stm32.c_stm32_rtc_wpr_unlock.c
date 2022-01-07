
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {scalar_t__ wpr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;


 int RTC_WPR_1ST_KEY ;
 int RTC_WPR_2ND_KEY ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_rtc_wpr_unlock(struct stm32_rtc *rtc)
{
 const struct stm32_rtc_registers *regs = &rtc->data->regs;

 writel_relaxed(RTC_WPR_1ST_KEY, rtc->base + regs->wpr);
 writel_relaxed(RTC_WPR_2ND_KEY, rtc->base + regs->wpr);
}
