
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada38x_rtc {scalar_t__ regs_soc; } ;


 int RTC_8K_ALARM2 ;
 scalar_t__ RTC_8K_IMR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void armada8k_unmask_interrupt(struct armada38x_rtc *rtc)
{
 writel(RTC_8K_ALARM2, rtc->regs_soc + RTC_8K_IMR);
}
