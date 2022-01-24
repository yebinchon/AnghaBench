#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_rtc_registers {scalar_t__ wpr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_WPR_WRONG_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct stm32_rtc *rtc)
{
	const struct stm32_rtc_registers *regs = &rtc->data->regs;

	FUNC0(RTC_WPR_WRONG_KEY, rtc->base + regs->wpr);
}