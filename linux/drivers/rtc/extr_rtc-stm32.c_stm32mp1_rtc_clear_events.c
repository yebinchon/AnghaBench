
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {scalar_t__ scr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;


 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void stm32mp1_rtc_clear_events(struct stm32_rtc *rtc,
          unsigned int flags)
{
 struct stm32_rtc_registers regs = rtc->data->regs;


 writel_relaxed(flags, rtc->base + regs.scr);
}
