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
typedef  int /*<<< orphan*/  time64_t ;
struct sprd_rtc {int valid; scalar_t__ base; int /*<<< orphan*/  regmap; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRD_RTC_POWER_STS_CLEAR ; 
 int /*<<< orphan*/  SPRD_RTC_POWER_STS_VALID ; 
 scalar_t__ SPRD_RTC_PWR_CTRL ; 
 int /*<<< orphan*/  SPRD_RTC_TIME ; 
 struct sprd_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*) ; 
 int FUNC3 (struct sprd_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct sprd_rtc *rtc = FUNC0(dev);
	time64_t secs = FUNC2(tm);
	int ret;

	ret = FUNC3(rtc, SPRD_RTC_TIME, secs);
	if (ret)
		return ret;

	if (!rtc->valid) {
		/* Clear RTC power status firstly */
		ret = FUNC1(rtc->regmap, rtc->base + SPRD_RTC_PWR_CTRL,
				   SPRD_RTC_POWER_STS_CLEAR);
		if (ret)
			return ret;

		/*
		 * Set RTC power status to indicate now RTC has valid time
		 * values.
		 */
		ret = FUNC1(rtc->regmap, rtc->base + SPRD_RTC_PWR_CTRL,
				   SPRD_RTC_POWER_STS_VALID);
		if (ret)
			return ret;

		rtc->valid = true;
	}

	return 0;
}