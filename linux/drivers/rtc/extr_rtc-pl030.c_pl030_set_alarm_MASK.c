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
struct rtc_wkalrm {int /*<<< orphan*/  time; } ;
struct pl030_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_MR ; 
 struct pl030_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pl030_rtc *rtc = FUNC0(dev);
	unsigned long time;
	int ret;

	/*
	 * At the moment, we can only deal with non-wildcarded alarm times.
	 */
	ret = FUNC2(&alrm->time);
	if (ret == 0)
		ret = FUNC1(&alrm->time, &time);
	if (ret == 0)
		FUNC3(time, rtc->base + RTC_MR);
	return ret;
}