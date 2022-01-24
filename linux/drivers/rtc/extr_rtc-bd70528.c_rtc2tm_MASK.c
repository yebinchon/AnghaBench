#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int tm_hour; void* tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_min; void* tm_sec; } ;
struct TYPE_2__ {int sec; int min; int hour; } ;
struct bd70528_rtc_data {int day; int month; int year; int week; TYPE_1__ time; } ;

/* Variables and functions */
 int BD70528_MASK_RTC_DAY ; 
 int BD70528_MASK_RTC_HOUR ; 
 int BD70528_MASK_RTC_HOUR_24H ; 
 int BD70528_MASK_RTC_HOUR_PM ; 
 int BD70528_MASK_RTC_MINUTE ; 
 int BD70528_MASK_RTC_MONTH ; 
 int BD70528_MASK_RTC_SEC ; 
 int BD70528_MASK_RTC_WEEK ; 
 int BD70528_MASK_RTC_YEAR ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct bd70528_rtc_data *r, struct rtc_time *t)
{
	t->tm_sec = FUNC0(r->time.sec & BD70528_MASK_RTC_SEC);
	t->tm_min = FUNC0(r->time.min & BD70528_MASK_RTC_MINUTE);
	t->tm_hour = FUNC0(r->time.hour & BD70528_MASK_RTC_HOUR);
	/*
	 * If RTC is in 12H mode, then bit BD70528_MASK_RTC_HOUR_PM
	 * is not BCD value but tells whether it is AM or PM
	 */
	if (!(r->time.hour & BD70528_MASK_RTC_HOUR_24H)) {
		t->tm_hour %= 12;
		if (r->time.hour & BD70528_MASK_RTC_HOUR_PM)
			t->tm_hour += 12;
	}
	t->tm_mday = FUNC0(r->day & BD70528_MASK_RTC_DAY);
	t->tm_mon = FUNC0(r->month & BD70528_MASK_RTC_MONTH) - 1;
	t->tm_year = 100 + FUNC0(r->year & BD70528_MASK_RTC_YEAR);
	t->tm_wday = FUNC0(r->week & BD70528_MASK_RTC_WEEK);
}