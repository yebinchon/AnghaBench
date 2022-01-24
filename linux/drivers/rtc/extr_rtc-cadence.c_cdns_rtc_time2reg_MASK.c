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
typedef  int u32 ;
struct rtc_time {int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_RTC_TIME_HR ; 
 int /*<<< orphan*/  CDNS_RTC_TIME_M ; 
 int /*<<< orphan*/  CDNS_RTC_TIME_S ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct rtc_time *tm)
{
	return FUNC0(CDNS_RTC_TIME_S,  FUNC1(tm->tm_sec))
	     | FUNC0(CDNS_RTC_TIME_M,  FUNC1(tm->tm_min))
	     | FUNC0(CDNS_RTC_TIME_HR, FUNC1(tm->tm_hour));
}