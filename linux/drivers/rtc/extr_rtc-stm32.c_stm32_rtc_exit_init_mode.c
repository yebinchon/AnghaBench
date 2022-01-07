
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {int isr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;


 unsigned int STM32_RTC_ISR_INIT ;
 unsigned int readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void stm32_rtc_exit_init_mode(struct stm32_rtc *rtc)
{
 const struct stm32_rtc_registers *regs = &rtc->data->regs;
 unsigned int isr = readl_relaxed(rtc->base + regs->isr);

 isr &= ~STM32_RTC_ISR_INIT;
 writel_relaxed(isr, rtc->base + regs->isr);
}
