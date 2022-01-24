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
struct sa1100_rtc {int /*<<< orphan*/  lock; int /*<<< orphan*/  rtsr; struct rtc_device* rtc; } ;
struct rtc_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long RTC_AF ; 
 unsigned long RTC_IRQF ; 
 unsigned long RTC_UF ; 
 unsigned int RTSR_AL ; 
 unsigned int RTSR_ALE ; 
 unsigned int RTSR_HZ ; 
 unsigned int RTSR_HZE ; 
 struct sa1100_rtc* FUNC0 (void*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sa1100_rtc *info = FUNC0(dev_id);
	struct rtc_device *rtc = info->rtc;
	unsigned int rtsr;
	unsigned long events = 0;

	FUNC3(&info->lock);

	rtsr = FUNC1(info->rtsr);
	/* clear interrupt sources */
	FUNC5(0, info->rtsr);
	/* Fix for a nasty initialization problem the in SA11xx RTSR register.
	 * See also the comments in sa1100_rtc_probe(). */
	if (rtsr & (RTSR_ALE | RTSR_HZE)) {
		/* This is the original code, before there was the if test
		 * above. This code does not clear interrupts that were not
		 * enabled. */
		FUNC5((RTSR_AL | RTSR_HZ) & (rtsr >> 2), info->rtsr);
	} else {
		/* For some reason, it is possible to enter this routine
		 * without interruptions enabled, it has been tested with
		 * several units (Bug in SA11xx chip?).
		 *
		 * This situation leads to an infinite "loop" of interrupt
		 * routine calling and as a result the processor seems to
		 * lock on its first call to open(). */
		FUNC5(RTSR_AL | RTSR_HZ, info->rtsr);
	}

	/* clear alarm interrupt if it has occurred */
	if (rtsr & RTSR_AL)
		rtsr &= ~RTSR_ALE;
	FUNC5(rtsr & (RTSR_ALE | RTSR_HZE), info->rtsr);

	/* update irq data & counter */
	if (rtsr & RTSR_AL)
		events |= RTC_AF | RTC_IRQF;
	if (rtsr & RTSR_HZ)
		events |= RTC_UF | RTC_IRQF;

	FUNC2(rtc, 1, events);

	FUNC4(&info->lock);

	return IRQ_HANDLED;
}