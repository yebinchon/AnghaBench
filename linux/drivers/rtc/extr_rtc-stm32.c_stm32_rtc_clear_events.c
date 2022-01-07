
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {scalar_t__ isr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;


 unsigned int readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void stm32_rtc_clear_events(struct stm32_rtc *rtc,
       unsigned int flags)
{
 const struct stm32_rtc_registers *regs = &rtc->data->regs;


 writel_relaxed(readl_relaxed(rtc->base + regs->isr) & ~flags,
         rtc->base + regs->isr);
}
