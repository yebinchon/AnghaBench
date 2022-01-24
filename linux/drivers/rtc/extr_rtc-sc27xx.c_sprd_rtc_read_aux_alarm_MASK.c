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
typedef  int u32 ;
typedef  int /*<<< orphan*/  time64_t ;
struct sprd_rtc {scalar_t__ base; int /*<<< orphan*/  regmap; } ;
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SPRD_RTC_AUXALM_EN ; 
 int /*<<< orphan*/  SPRD_RTC_AUX_ALARM ; 
 scalar_t__ SPRD_RTC_INT_EN ; 
 scalar_t__ SPRD_RTC_INT_RAW_STS ; 
 struct sprd_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sprd_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct sprd_rtc *rtc = FUNC0(dev);
	time64_t secs;
	u32 val;
	int ret;

	ret = FUNC3(rtc, SPRD_RTC_AUX_ALARM, &secs);
	if (ret)
		return ret;

	FUNC2(secs, &alrm->time);

	ret = FUNC1(rtc->regmap, rtc->base + SPRD_RTC_INT_EN, &val);
	if (ret)
		return ret;

	alrm->enabled = !!(val & SPRD_RTC_AUXALM_EN);

	ret = FUNC1(rtc->regmap, rtc->base + SPRD_RTC_INT_RAW_STS, &val);
	if (ret)
		return ret;

	alrm->pending = !!(val & SPRD_RTC_AUXALM_EN);
	return 0;
}