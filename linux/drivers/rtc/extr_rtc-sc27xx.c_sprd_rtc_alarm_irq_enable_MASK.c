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
struct sprd_rtc {scalar_t__ base; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SPRD_RTC_ALARM_EN ; 
 int SPRD_RTC_AUXALM_EN ; 
 scalar_t__ SPRD_RTC_INT_EN ; 
 struct sprd_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC2 (struct sprd_rtc*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int enabled)
{
	struct sprd_rtc *rtc = FUNC0(dev);
	int ret;

	if (enabled) {
		ret = FUNC1(rtc->regmap,
					 rtc->base + SPRD_RTC_INT_EN,
					 SPRD_RTC_ALARM_EN | SPRD_RTC_AUXALM_EN,
					 SPRD_RTC_ALARM_EN | SPRD_RTC_AUXALM_EN);
		if (ret)
			return ret;

		ret = FUNC2(rtc, false);
	} else {
		FUNC1(rtc->regmap, rtc->base + SPRD_RTC_INT_EN,
				   SPRD_RTC_ALARM_EN | SPRD_RTC_AUXALM_EN, 0);

		ret = FUNC2(rtc, true);
	}

	return ret;
}