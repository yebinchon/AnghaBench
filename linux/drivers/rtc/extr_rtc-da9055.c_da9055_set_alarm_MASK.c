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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtc_time {int tm_year; int tm_mon; int tm_min; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; } ;
struct da9055 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9055_REG_ALARM_H ; 
 int /*<<< orphan*/  DA9055_REG_ALARM_MI ; 
 int /*<<< orphan*/  DA9055_REG_ALARM_MO ; 
 int /*<<< orphan*/  DA9055_REG_ALARM_Y ; 
 int /*<<< orphan*/  DA9055_RTC_ALM_MIN ; 
 int /*<<< orphan*/  DA9055_RTC_ALM_MONTH ; 
 int /*<<< orphan*/  DA9055_RTC_ALM_YEAR ; 
 int FUNC0 (struct da9055*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct da9055*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct da9055 *da9055, struct rtc_time *rtc_tm)
{
	int ret;
	uint8_t v[2];

	rtc_tm->tm_year -= 100;
	rtc_tm->tm_mon += 1;

	ret = FUNC1(da9055, DA9055_REG_ALARM_MI,
				DA9055_RTC_ALM_MIN, rtc_tm->tm_min);
	if (ret != 0) {
		FUNC2(da9055->dev, "Failed to write ALRM MIN: %d\n", ret);
		return ret;
	}

	v[0] = rtc_tm->tm_hour;
	v[1] = rtc_tm->tm_mday;

	ret = FUNC0(da9055, DA9055_REG_ALARM_H, 2, v);
	if (ret < 0)
		return ret;

	ret = FUNC1(da9055, DA9055_REG_ALARM_MO,
				DA9055_RTC_ALM_MONTH, rtc_tm->tm_mon);
	if (ret < 0)
		FUNC2(da9055->dev, "Failed to write ALM Month:%d\n", ret);

	ret = FUNC1(da9055, DA9055_REG_ALARM_Y,
				DA9055_RTC_ALM_YEAR, rtc_tm->tm_year);
	if (ret < 0)
		FUNC2(da9055->dev, "Failed to write ALM Year:%d\n", ret);

	return ret;
}