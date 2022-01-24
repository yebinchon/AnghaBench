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
struct sa1100_rtc {int /*<<< orphan*/  rtsr; struct rtc_device* rtc; struct rtc_device* clk; int /*<<< orphan*/  rcnr; int /*<<< orphan*/  rttr; int /*<<< orphan*/  lock; } ;
struct rtc_device {int /*<<< orphan*/  max_user_freq; } ;
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int RTC_DEF_DIVIDER ; 
 int RTC_DEF_TRIM ; 
 int /*<<< orphan*/  RTC_FREQ ; 
 int RTSR_AL ; 
 int RTSR_HZ ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*) ; 
 int FUNC3 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct rtc_device* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rtc_device* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa1100_rtc_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

int FUNC11(struct platform_device *pdev, struct sa1100_rtc *info)
{
	struct rtc_device *rtc;
	int ret;

	FUNC9(&info->lock);

	info->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(info->clk)) {
		FUNC4(&pdev->dev, "failed to find rtc clock source\n");
		return FUNC1(info->clk);
	}

	ret = FUNC3(info->clk);
	if (ret)
		return ret;
	/*
	 * According to the manual we should be able to let RTTR be zero
	 * and then a default diviser for a 32.768KHz clock is used.
	 * Apparently this doesn't work, at least for my SA1110 rev 5.
	 * If the clock divider is uninitialized then reset it to the
	 * default value to get the 1Hz clock.
	 */
	if (FUNC8(info->rttr) == 0) {
		FUNC10(RTC_DEF_DIVIDER + (RTC_DEF_TRIM << 16), info->rttr);
		FUNC5(&pdev->dev, "warning: "
			"initializing default clock divider/trim value\n");
		/* The current RTC value probably doesn't make sense either */
		FUNC10(0, info->rcnr);
	}

	rtc = FUNC7(&pdev->dev, pdev->name, &sa1100_rtc_ops,
					THIS_MODULE);
	if (FUNC0(rtc)) {
		FUNC2(info->clk);
		return FUNC1(rtc);
	}
	info->rtc = rtc;

	rtc->max_user_freq = RTC_FREQ;

	/* Fix for a nasty initialization problem the in SA11xx RTSR register.
	 * See also the comments in sa1100_rtc_interrupt().
	 *
	 * Sometimes bit 1 of the RTSR (RTSR_HZ) will wake up 1, which means an
	 * interrupt pending, even though interrupts were never enabled.
	 * In this case, this bit it must be reset before enabling
	 * interruptions to avoid a nonexistent interrupt to occur.
	 *
	 * In principle, the same problem would apply to bit 0, although it has
	 * never been observed to happen.
	 *
	 * This issue is addressed both here and in sa1100_rtc_interrupt().
	 * If the issue is not addressed here, in the times when the processor
	 * wakes up with the bit set there will be one spurious interrupt.
	 *
	 * The issue is also dealt with in sa1100_rtc_interrupt() to be on the
	 * safe side, once the condition that lead to this strange
	 * initialization is unknown and could in principle happen during
	 * normal processing.
	 *
	 * Notice that clearing bit 1 and 0 is accomplished by writting ONES to
	 * the corresponding bits in RTSR. */
	FUNC10(RTSR_AL | RTSR_HZ, info->rtsr);

	return 0;
}