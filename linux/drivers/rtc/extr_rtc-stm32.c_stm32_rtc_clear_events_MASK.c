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
struct stm32_rtc_registers {scalar_t__ isr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct stm32_rtc *rtc,
				   unsigned int flags)
{
	const struct stm32_rtc_registers *regs = &rtc->data->regs;

	/* Flags are cleared by writing 0 in RTC_ISR */
	FUNC1(FUNC0(rtc->base + regs->isr) & ~flags,
		       rtc->base + regs->isr);
}