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
typedef  int u32 ;
struct armada38x_rtc {scalar_t__ regs_soc; } ;

/* Variables and functions */
 scalar_t__ RTC_8K_BRIDGE_TIMING_CTL0 ; 
 scalar_t__ RTC_8K_BRIDGE_TIMING_CTL1 ; 
 int RTC_8K_READ_DELAY_MASK ; 
 int RTC_8K_READ_DELAY_OFFS ; 
 int RTC_8K_WRCLK_PERIOD_MASK ; 
 int RTC_8K_WRCLK_PERIOD_OFFS ; 
 int RTC_8K_WRCLK_SETUP_MASK ; 
 int RTC_8K_WRCLK_SETUP_OFFS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct armada38x_rtc *rtc)
{
	u32 reg;

	reg = FUNC0(rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL0);
	reg &= ~RTC_8K_WRCLK_PERIOD_MASK;
	reg |= 0x3FF << RTC_8K_WRCLK_PERIOD_OFFS;
	reg &= ~RTC_8K_WRCLK_SETUP_MASK;
	reg |= 0x29 << RTC_8K_WRCLK_SETUP_OFFS;
	FUNC1(reg, rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL0);

	reg = FUNC0(rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL1);
	reg &= ~RTC_8K_READ_DELAY_MASK;
	reg |= 0x3F << RTC_8K_READ_DELAY_OFFS;
	FUNC1(reg, rtc->regs_soc + RTC_8K_BRIDGE_TIMING_CTL1);
}