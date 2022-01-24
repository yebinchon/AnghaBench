#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stm32_rtc_registers {int /*<<< orphan*/  cr; scalar_t__ sr; } ;
struct stm32_rtc_events {unsigned int alra; } ;
struct stm32_rtc {TYPE_2__* rtc_dev; scalar_t__ base; TYPE_1__* data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  ops_lock; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct stm32_rtc_events events; struct stm32_rtc_registers regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 unsigned int STM32_RTC_CR_ALRAIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_rtc*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct stm32_rtc *rtc = (struct stm32_rtc *)dev_id;
	const struct stm32_rtc_registers *regs = &rtc->data->regs;
	const struct stm32_rtc_events *evts = &rtc->data->events;
	unsigned int status, cr;

	FUNC1(&rtc->rtc_dev->ops_lock);

	status = FUNC3(rtc->base + regs->sr);
	cr = FUNC3(rtc->base + regs->cr);

	if ((status & evts->alra) &&
	    (cr & STM32_RTC_CR_ALRAIE)) {
		/* Alarm A flag - Alarm interrupt */
		FUNC0(&rtc->rtc_dev->dev, "Alarm occurred\n");

		/* Pass event to the kernel */
		FUNC4(rtc->rtc_dev, 1, RTC_IRQF | RTC_AF);

		/* Clear event flags, otherwise new events won't be received */
		FUNC5(rtc, evts->alra);
	}

	FUNC2(&rtc->rtc_dev->ops_lock);

	return IRQ_HANDLED;
}