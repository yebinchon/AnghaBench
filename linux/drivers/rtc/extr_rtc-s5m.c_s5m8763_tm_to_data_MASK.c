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
typedef  int /*<<< orphan*/  u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int /*<<< orphan*/  tm_wday; } ;

/* Variables and functions */
 size_t RTC_DATE ; 
 size_t RTC_HOUR ; 
 size_t RTC_MIN ; 
 size_t RTC_MONTH ; 
 size_t RTC_SEC ; 
 size_t RTC_WEEKDAY ; 
 size_t RTC_YEAR1 ; 
 size_t RTC_YEAR2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct rtc_time *tm, u8 *data)
{
	data[RTC_SEC] = FUNC0(tm->tm_sec);
	data[RTC_MIN] = FUNC0(tm->tm_min);
	data[RTC_HOUR] = FUNC0(tm->tm_hour);
	data[RTC_WEEKDAY] = tm->tm_wday;
	data[RTC_DATE] = FUNC0(tm->tm_mday);
	data[RTC_MONTH] = FUNC0(tm->tm_mon);
	data[RTC_YEAR1] = FUNC0(tm->tm_year % 100);
	data[RTC_YEAR2] = FUNC0((tm->tm_year + 1900) / 100);
}