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
typedef  int uint8_t ;
struct rtc_time {int tm_sec; int tm_year; int tm_mon; int tm_min; int tm_hour; int tm_mday; } ;
struct da9052_rtc {struct da9052* da9052; } ;
struct da9052 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DA9052_ALARM_H_REG ; 
 int /*<<< orphan*/  DA9052_ALARM_MI_REG ; 
 int /*<<< orphan*/  DA9052_ALARM_Y_REG ; 
 int /*<<< orphan*/  DA9052_RTC_MIN ; 
 int /*<<< orphan*/  DA9052_RTC_YEAR ; 
 int FUNC1 (struct da9052*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct da9052*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct da9052_rtc*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct rtc_time*) ; 
 int FUNC5 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct da9052_rtc *rtc, struct rtc_time *rtc_tm)
{
	struct da9052 *da9052 = rtc->da9052;
	unsigned long alm_time;
	int ret;
	uint8_t v[3];

	ret = FUNC5(rtc_tm, &alm_time);
	if (ret != 0)
		return ret;

	if (rtc_tm->tm_sec > 0) {
		alm_time += 60 - rtc_tm->tm_sec;
		FUNC4(alm_time, rtc_tm);
	}
	FUNC0(rtc_tm->tm_sec); /* it will cause repeated irqs if not zero */

	rtc_tm->tm_year -= 100;
	rtc_tm->tm_mon += 1;

	ret = FUNC2(da9052, DA9052_ALARM_MI_REG,
				DA9052_RTC_MIN, rtc_tm->tm_min);
	if (ret != 0) {
		FUNC3(rtc, "Failed to write ALRM MIN: %d\n", ret);
		return ret;
	}

	v[0] = rtc_tm->tm_hour;
	v[1] = rtc_tm->tm_mday;
	v[2] = rtc_tm->tm_mon;

	ret = FUNC1(da9052, DA9052_ALARM_H_REG, 3, v);
	if (ret < 0)
		return ret;

	ret = FUNC2(da9052, DA9052_ALARM_Y_REG,
				DA9052_RTC_YEAR, rtc_tm->tm_year);
	if (ret != 0)
		FUNC3(rtc, "Failed to write ALRM YEAR: %d\n", ret);

	return ret;
}