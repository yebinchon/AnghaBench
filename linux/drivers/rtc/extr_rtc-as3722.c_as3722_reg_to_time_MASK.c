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
typedef  int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int AS3722_RTC_START_YEAR ; 
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u8 *rbuff, struct rtc_time *tm)
{
	tm->tm_sec = FUNC0(rbuff[0] & 0x7F);
	tm->tm_min = FUNC0(rbuff[1] & 0x7F);
	tm->tm_hour = FUNC0(rbuff[2] & 0x3F);
	tm->tm_mday = FUNC0(rbuff[3] & 0x3F);
	tm->tm_mon = FUNC0(rbuff[4] & 0x1F) - 1;
	tm->tm_year = (AS3722_RTC_START_YEAR - 1900) + FUNC0(rbuff[5] & 0x7F);
	return;
}