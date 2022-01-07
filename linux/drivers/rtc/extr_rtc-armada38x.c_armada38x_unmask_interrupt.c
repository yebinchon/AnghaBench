
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada38x_rtc {scalar_t__ regs_soc; } ;


 int SOC_RTC_ALARM1_MASK ;
 scalar_t__ SOC_RTC_INTERRUPT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void armada38x_unmask_interrupt(struct armada38x_rtc *rtc)
{
 u32 val = readl(rtc->regs_soc + SOC_RTC_INTERRUPT);

 writel(val | SOC_RTC_ALARM1_MASK, rtc->regs_soc + SOC_RTC_INTERRUPT);
}
