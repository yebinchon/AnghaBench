#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jz4740_rtc {unsigned long min_wakeup_pin_assert_time; unsigned long reset_pin_assert_time; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_REG_RTC_RESET_COUNTER ; 
 int /*<<< orphan*/  JZ_REG_RTC_WAKEUP_FILTER ; 
 unsigned long JZ_RTC_RESET_COUNTER_MASK ; 
 unsigned long JZ_RTC_WAKEUP_FILTER_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_for_power_off ; 
 struct jz4740_rtc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct jz4740_rtc*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	struct jz4740_rtc *rtc = FUNC2(dev_for_power_off);
	unsigned long rtc_rate;
	unsigned long wakeup_filter_ticks;
	unsigned long reset_counter_ticks;

	FUNC1(rtc->clk);

	rtc_rate = FUNC0(rtc->clk);

	/*
	 * Set minimum wakeup pin assertion time: 100 ms.
	 * Range is 0 to 2 sec if RTC is clocked at 32 kHz.
	 */
	wakeup_filter_ticks =
		(rtc->min_wakeup_pin_assert_time * rtc_rate) / 1000;
	if (wakeup_filter_ticks < JZ_RTC_WAKEUP_FILTER_MASK)
		wakeup_filter_ticks &= JZ_RTC_WAKEUP_FILTER_MASK;
	else
		wakeup_filter_ticks = JZ_RTC_WAKEUP_FILTER_MASK;
	FUNC4(rtc,
			     JZ_REG_RTC_WAKEUP_FILTER, wakeup_filter_ticks);

	/*
	 * Set reset pin low-level assertion time after wakeup: 60 ms.
	 * Range is 0 to 125 ms if RTC is clocked at 32 kHz.
	 */
	reset_counter_ticks = (rtc->reset_pin_assert_time * rtc_rate) / 1000;
	if (reset_counter_ticks < JZ_RTC_RESET_COUNTER_MASK)
		reset_counter_ticks &= JZ_RTC_RESET_COUNTER_MASK;
	else
		reset_counter_ticks = JZ_RTC_RESET_COUNTER_MASK;
	FUNC4(rtc,
			     JZ_REG_RTC_RESET_COUNTER, reset_counter_ticks);

	FUNC3(dev_for_power_off);
	FUNC5();
}