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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_year; int tm_wday; int tm_mon; int tm_mday; } ;

/* Variables and functions */
 unsigned int AT91_RTC_CENT ; 
 unsigned int AT91_RTC_DATE ; 
 unsigned int AT91_RTC_DAY ; 
 unsigned int AT91_RTC_HOUR ; 
 unsigned int AT91_RTC_MIN ; 
 unsigned int AT91_RTC_MONTH ; 
 unsigned int AT91_RTC_SEC ; 
 unsigned int AT91_RTC_YEAR ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int timereg, unsigned int calreg,
				struct rtc_time *tm)
{
	unsigned int time, date;

	/* must read twice in case it changes */
	do {
		time = FUNC0(timereg);
		date = FUNC0(calreg);
	} while ((time != FUNC0(timereg)) ||
			(date != FUNC0(calreg)));

	tm->tm_sec  = FUNC1((time & AT91_RTC_SEC) >> 0);
	tm->tm_min  = FUNC1((time & AT91_RTC_MIN) >> 8);
	tm->tm_hour = FUNC1((time & AT91_RTC_HOUR) >> 16);

	/*
	 * The Calendar Alarm register does not have a field for
	 * the year - so these will return an invalid value.
	 */
	tm->tm_year  = FUNC1(date & AT91_RTC_CENT) * 100;	/* century */
	tm->tm_year += FUNC1((date & AT91_RTC_YEAR) >> 8);	/* year */

	tm->tm_wday = FUNC1((date & AT91_RTC_DAY) >> 21) - 1;	/* day of the week [0-6], Sunday=0 */
	tm->tm_mon  = FUNC1((date & AT91_RTC_MONTH) >> 16) - 1;
	tm->tm_mday = FUNC1((date & AT91_RTC_DATE) >> 24);
}