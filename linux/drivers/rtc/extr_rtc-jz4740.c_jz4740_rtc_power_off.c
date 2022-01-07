
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4740_rtc {unsigned long min_wakeup_pin_assert_time; unsigned long reset_pin_assert_time; int clk; } ;


 int JZ_REG_RTC_RESET_COUNTER ;
 int JZ_REG_RTC_WAKEUP_FILTER ;
 unsigned long JZ_RTC_RESET_COUNTER_MASK ;
 unsigned long JZ_RTC_WAKEUP_FILTER_MASK ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_for_power_off ;
 struct jz4740_rtc* dev_get_drvdata (int ) ;
 int jz4740_rtc_poweroff (int ) ;
 int jz4740_rtc_reg_write (struct jz4740_rtc*,int ,unsigned long) ;
 int kernel_halt () ;

__attribute__((used)) static void jz4740_rtc_power_off(void)
{
 struct jz4740_rtc *rtc = dev_get_drvdata(dev_for_power_off);
 unsigned long rtc_rate;
 unsigned long wakeup_filter_ticks;
 unsigned long reset_counter_ticks;

 clk_prepare_enable(rtc->clk);

 rtc_rate = clk_get_rate(rtc->clk);





 wakeup_filter_ticks =
  (rtc->min_wakeup_pin_assert_time * rtc_rate) / 1000;
 if (wakeup_filter_ticks < JZ_RTC_WAKEUP_FILTER_MASK)
  wakeup_filter_ticks &= JZ_RTC_WAKEUP_FILTER_MASK;
 else
  wakeup_filter_ticks = JZ_RTC_WAKEUP_FILTER_MASK;
 jz4740_rtc_reg_write(rtc,
        JZ_REG_RTC_WAKEUP_FILTER, wakeup_filter_ticks);





 reset_counter_ticks = (rtc->reset_pin_assert_time * rtc_rate) / 1000;
 if (reset_counter_ticks < JZ_RTC_RESET_COUNTER_MASK)
  reset_counter_ticks &= JZ_RTC_RESET_COUNTER_MASK;
 else
  reset_counter_ticks = JZ_RTC_RESET_COUNTER_MASK;
 jz4740_rtc_reg_write(rtc,
        JZ_REG_RTC_RESET_COUNTER, reset_counter_ticks);

 jz4740_rtc_poweroff(dev_for_power_off);
 kernel_halt();
}
