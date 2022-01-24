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
typedef  scalar_t__ u16 ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct mt6397_rtc {int /*<<< orphan*/  lock; scalar_t__ addr_base; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_MIN_YEAR_OFFSET ; 
 int RTC_OFFSET_COUNT ; 
 size_t RTC_OFFSET_DOM ; 
 size_t RTC_OFFSET_HOUR ; 
 size_t RTC_OFFSET_MIN ; 
 size_t RTC_OFFSET_MTH ; 
 size_t RTC_OFFSET_SEC ; 
 size_t RTC_OFFSET_YEAR ; 
 scalar_t__ RTC_TC_SEC ; 
 struct mt6397_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct mt6397_rtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct mt6397_rtc *rtc = FUNC0(dev);
	int ret;
	u16 data[RTC_OFFSET_COUNT];

	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
	tm->tm_mon++;

	data[RTC_OFFSET_SEC] = tm->tm_sec;
	data[RTC_OFFSET_MIN] = tm->tm_min;
	data[RTC_OFFSET_HOUR] = tm->tm_hour;
	data[RTC_OFFSET_DOM] = tm->tm_mday;
	data[RTC_OFFSET_MTH] = tm->tm_mon;
	data[RTC_OFFSET_YEAR] = tm->tm_year;

	FUNC2(&rtc->lock);
	ret = FUNC4(rtc->regmap, rtc->addr_base + RTC_TC_SEC,
				data, RTC_OFFSET_COUNT);
	if (ret < 0)
		goto exit;

	/* Time register write to hardware after call trigger function */
	ret = FUNC1(rtc);

exit:
	FUNC3(&rtc->lock);
	return ret;
}