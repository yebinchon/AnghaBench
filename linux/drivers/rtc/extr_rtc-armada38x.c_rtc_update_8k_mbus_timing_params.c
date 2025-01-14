
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada38x_rtc {scalar_t__ regs_soc; } ;


 scalar_t__ RTC_8K_BRIDGE_TIMING_CTL0 ;
 scalar_t__ RTC_8K_BRIDGE_TIMING_CTL1 ;
 int RTC_8K_READ_DELAY_MASK ;
 int RTC_8K_READ_DELAY_OFFS ;
 int RTC_8K_WRCLK_PERIOD_MASK ;
 int RTC_8K_WRCLK_PERIOD_OFFS ;
 int RTC_8K_WRCLK_SETUP_MASK ;
 int RTC_8K_WRCLK_SETUP_OFFS ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void rtc_update_8k_mbus_timing_params(struct armada38x_rtc *rtc)
{
 u32 reg;

 reg = readl(rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL0);
 reg &= ~RTC_8K_WRCLK_PERIOD_MASK;
 reg |= 0x3FF << RTC_8K_WRCLK_PERIOD_OFFS;
 reg &= ~RTC_8K_WRCLK_SETUP_MASK;
 reg |= 0x29 << RTC_8K_WRCLK_SETUP_OFFS;
 writel(reg, rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL0);

 reg = readl(rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL1);
 reg &= ~RTC_8K_READ_DELAY_MASK;
 reg |= 0x3F << RTC_8K_READ_DELAY_OFFS;
 writel(reg, rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL1);
}
