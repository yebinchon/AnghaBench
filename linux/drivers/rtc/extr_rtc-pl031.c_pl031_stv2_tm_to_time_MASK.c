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
struct rtc_time {int tm_year; int tm_wday; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTC_HOUR_SHIFT ; 
 int RTC_MDAY_SHIFT ; 
 int RTC_MIN_SHIFT ; 
 int RTC_MON_SHIFT ; 
 int RTC_SEC_SHIFT ; 
 int RTC_WDAY_SHIFT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				 struct rtc_time *tm, unsigned long *st_time,
	unsigned long *bcd_year)
{
	int year = tm->tm_year + 1900;
	int wday = tm->tm_wday;

	/* wday masking is not working in hardware so wday must be valid */
	if (wday < -1 || wday > 6) {
		FUNC1(dev, "invalid wday value %d\n", tm->tm_wday);
		return -EINVAL;
	} else if (wday == -1) {
		/* wday is not provided, calculate it here */
		unsigned long time;
		struct rtc_time calc_tm;

		FUNC3(tm, &time);
		FUNC2(time, &calc_tm);
		wday = calc_tm.tm_wday;
	}

	*bcd_year = (FUNC0(year % 100) | FUNC0(year / 100) << 8);

	*st_time = ((tm->tm_mon + 1) << RTC_MON_SHIFT)
			|	(tm->tm_mday << RTC_MDAY_SHIFT)
			|	((wday + 1) << RTC_WDAY_SHIFT)
			|	(tm->tm_hour << RTC_HOUR_SHIFT)
			|	(tm->tm_min << RTC_MIN_SHIFT)
			|	(tm->tm_sec << RTC_SEC_SHIFT);

	return 0;
}