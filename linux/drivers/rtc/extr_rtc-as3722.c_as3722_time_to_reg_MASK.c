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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int AS3722_RTC_START_YEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u8 *rbuff, struct rtc_time *tm)
{
	rbuff[0] = FUNC0(tm->tm_sec);
	rbuff[1] = FUNC0(tm->tm_min);
	rbuff[2] = FUNC0(tm->tm_hour);
	rbuff[3] = FUNC0(tm->tm_mday);
	rbuff[4] = FUNC0(tm->tm_mon + 1);
	rbuff[5] = FUNC0(tm->tm_year - (AS3722_RTC_START_YEAR - 1900));
}