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
struct sam9_rtc {int /*<<< orphan*/  lock; scalar_t__ suspended; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int AT91_RTT_ALMIEN ; 
 int AT91_RTT_RTTINCIEN ; 
 int /*<<< orphan*/  MR ; 
 int FUNC0 (struct sam9_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sam9_rtc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sam9_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *_rtc)
{
	struct sam9_rtc *rtc = _rtc;
	int ret;

	FUNC5(&rtc->lock);

	ret = FUNC0(rtc);

	/* We're called in suspended state */
	if (rtc->suspended) {
		/* Mask irqs coming from this peripheral */
		FUNC4(rtc, MR,
			   FUNC3(rtc, MR) &
			   ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN));
		/* Trigger a system wakeup */
		FUNC2();
	} else {
		FUNC1(rtc);
	}

	FUNC6(&rtc->lock);

	return ret;
}