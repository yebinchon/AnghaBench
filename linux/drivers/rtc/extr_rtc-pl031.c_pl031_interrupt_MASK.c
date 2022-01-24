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
struct pl031_local {int /*<<< orphan*/  rtc; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long RTC_AF ; 
 unsigned long RTC_BIT_AI ; 
 scalar_t__ RTC_ICR ; 
 unsigned long RTC_IRQF ; 
 scalar_t__ RTC_MIS ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct pl031_local *ldata = dev_id;
	unsigned long rtcmis;
	unsigned long events = 0;

	rtcmis = FUNC0(ldata->base + RTC_MIS);
	if (rtcmis & RTC_BIT_AI) {
		FUNC2(RTC_BIT_AI, ldata->base + RTC_ICR);
		events |= (RTC_AF | RTC_IRQF);
		FUNC1(ldata->rtc, 1, events);

		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}