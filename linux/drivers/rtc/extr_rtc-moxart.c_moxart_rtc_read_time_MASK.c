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
struct rtc_time {unsigned char tm_sec; unsigned char tm_min; unsigned char tm_hour; unsigned char tm_mday; unsigned char tm_mon; unsigned char tm_year; unsigned char tm_wday; int tm_yday; scalar_t__ tm_isdst; } ;
struct moxart_rtc {int /*<<< orphan*/  rtc_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_RTC_DATE_R ; 
 int /*<<< orphan*/  GPIO_RTC_DAY_R ; 
 int /*<<< orphan*/  GPIO_RTC_HOURS_R ; 
 int /*<<< orphan*/  GPIO_RTC_MINUTES_R ; 
 int /*<<< orphan*/  GPIO_RTC_MONTH_R ; 
 int /*<<< orphan*/  GPIO_RTC_SECONDS_R ; 
 int /*<<< orphan*/  GPIO_RTC_YEAR_R ; 
 int* day_of_year ; 
 struct moxart_rtc* FUNC0 (struct device*) ; 
 unsigned char FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct moxart_rtc *moxart_rtc = FUNC0(dev);
	unsigned char v;

	FUNC2(&moxart_rtc->rtc_lock);

	v = FUNC1(dev, GPIO_RTC_SECONDS_R);
	tm->tm_sec = (((v & 0x70) >> 4) * 10) + (v & 0x0F);

	v = FUNC1(dev, GPIO_RTC_MINUTES_R);
	tm->tm_min = (((v & 0x70) >> 4) * 10) + (v & 0x0F);

	v = FUNC1(dev, GPIO_RTC_HOURS_R);
	if (v & 0x80) { /* 12-hour mode */
		tm->tm_hour = (((v & 0x10) >> 4) * 10) + (v & 0x0F);
		if (v & 0x20) { /* PM mode */
			tm->tm_hour += 12;
			if (tm->tm_hour >= 24)
				tm->tm_hour = 0;
		}
	} else { /* 24-hour mode */
		tm->tm_hour = (((v & 0x30) >> 4) * 10) + (v & 0x0F);
	}

	v = FUNC1(dev, GPIO_RTC_DATE_R);
	tm->tm_mday = (((v & 0x30) >> 4) * 10) + (v & 0x0F);

	v = FUNC1(dev, GPIO_RTC_MONTH_R);
	tm->tm_mon = (((v & 0x10) >> 4) * 10) + (v & 0x0F);
	tm->tm_mon--;

	v = FUNC1(dev, GPIO_RTC_YEAR_R);
	tm->tm_year = (((v & 0xF0) >> 4) * 10) + (v & 0x0F);
	tm->tm_year += 100;
	if (tm->tm_year <= 69)
		tm->tm_year += 100;

	v = FUNC1(dev, GPIO_RTC_DAY_R);
	tm->tm_wday = (v & 0x0f) - 1;
	tm->tm_yday = day_of_year[tm->tm_mon];
	tm->tm_yday += (tm->tm_mday - 1);
	if (tm->tm_mon >= 2) {
		if (!(tm->tm_year % 4) && (tm->tm_year % 100))
			tm->tm_yday++;
	}

	tm->tm_isdst = 0;

	FUNC3(&moxart_rtc->rtc_lock);

	return 0;
}