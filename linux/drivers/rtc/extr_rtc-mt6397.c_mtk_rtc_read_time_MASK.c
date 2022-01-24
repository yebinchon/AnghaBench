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
struct rtc_time {int tm_sec; int tm_wday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
struct mt6397_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_MIN_YEAR_OFFSET ; 
 int FUNC0 (struct mt6397_rtc*,struct rtc_time*,int*) ; 
 struct mt6397_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	time64_t time;
	struct mt6397_rtc *rtc = FUNC1(dev);
	int days, sec, ret;

	do {
		ret = FUNC0(rtc, tm, &sec);
		if (ret < 0)
			goto exit;
	} while (sec < tm->tm_sec);

	/* HW register use 7 bits to store year data, minus
	 * RTC_MIN_YEAR_OFFSET before write year data to register, and plus
	 * RTC_MIN_YEAR_OFFSET back after read year from register
	 */
	tm->tm_year += RTC_MIN_YEAR_OFFSET;

	/* HW register start mon from one, but tm_mon start from zero. */
	tm->tm_mon--;
	time = FUNC3(tm);

	/* rtc_tm_to_time64 covert Gregorian date to seconds since
	 * 01-01-1970 00:00:00, and this date is Thursday.
	 */
	days = FUNC2(time, 86400);
	tm->tm_wday = (days + 4) % 7;

exit:
	return ret;
}