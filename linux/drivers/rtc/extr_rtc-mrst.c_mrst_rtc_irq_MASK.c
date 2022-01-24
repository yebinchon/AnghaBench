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
typedef  int u8 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RTC_INTR_FLAGS ; 
 int RTC_IRQF ; 
 int RTC_IRQMASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	u8 irqstat;

	FUNC2(&rtc_lock);
	/* This read will clear all IRQ flags inside Reg C */
	irqstat = FUNC4(RTC_INTR_FLAGS);
	FUNC3(&rtc_lock);

	irqstat &= RTC_IRQMASK | RTC_IRQF;
	if (FUNC0(irqstat)) {
		FUNC1(p, 1, irqstat);
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}