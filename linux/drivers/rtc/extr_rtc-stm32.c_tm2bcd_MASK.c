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
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(struct rtc_time *tm)
{
	tm->tm_sec = FUNC0(tm->tm_sec);
	tm->tm_min = FUNC0(tm->tm_min);
	tm->tm_hour = FUNC0(tm->tm_hour);

	tm->tm_mday = FUNC0(tm->tm_mday);
	tm->tm_mon = FUNC0(tm->tm_mon + 1);
	tm->tm_year = FUNC0(tm->tm_year - 100);
	/*
	 * Number of days since Sunday
	 * - on kernel side, 0=Sunday...6=Saturday
	 * - on rtc side, 0=invalid,1=Monday...7=Sunday
	 */
	tm->tm_wday = (!tm->tm_wday) ? 7 : tm->tm_wday;
}