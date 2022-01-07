
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada38x_rtc {scalar_t__ regs; } ;


 scalar_t__ RTC_STATUS ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rtc_delayed_write(u32 val, struct armada38x_rtc *rtc, int offset)
{
 writel(0, rtc->regs + RTC_STATUS);
 writel(0, rtc->regs + RTC_STATUS);
 writel(val, rtc->regs + offset);
 udelay(5);
}
