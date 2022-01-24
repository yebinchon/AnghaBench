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
typedef  int u32 ;
typedef  int /*<<< orphan*/  time64_t ;
struct sprd_rtc {scalar_t__ base; int /*<<< orphan*/  regmap; TYPE_2__* rtc; } ;
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct TYPE_4__ {TYPE_1__ aie_timer; scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRD_RTC_ALARM ; 
 int SPRD_RTC_ALARM_EN ; 
 scalar_t__ SPRD_RTC_INT_EN ; 
 scalar_t__ SPRD_RTC_INT_RAW_STS ; 
 struct sprd_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sprd_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,struct rtc_wkalrm*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct sprd_rtc *rtc = FUNC0(dev);
	time64_t secs;
	int ret;
	u32 val;

	/*
	 * Before RTC device is registered, it will check to see if there is an
	 * alarm already set in RTC hardware, and we always read the normal
	 * alarm at this time.
	 *
	 * Or if aie_timer is enabled, we should get the normal alarm time.
	 * Otherwise we should get auxiliary alarm time.
	 */
	if (rtc->rtc && rtc->rtc->registered && rtc->rtc->aie_timer.enabled == 0)
		return FUNC4(dev, alrm);

	ret = FUNC3(rtc, SPRD_RTC_ALARM, &secs);
	if (ret)
		return ret;

	FUNC2(secs, &alrm->time);

	ret = FUNC1(rtc->regmap, rtc->base + SPRD_RTC_INT_EN, &val);
	if (ret)
		return ret;

	alrm->enabled = !!(val & SPRD_RTC_ALARM_EN);

	ret = FUNC1(rtc->regmap, rtc->base + SPRD_RTC_INT_RAW_STS, &val);
	if (ret)
		return ret;

	alrm->pending = !!(val & SPRD_RTC_ALARM_EN);
	return 0;
}