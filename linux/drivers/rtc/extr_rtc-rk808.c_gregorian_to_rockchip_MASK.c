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
typedef  int time64_t ;
struct rtc_time {int tm_mon; int /*<<< orphan*/  tm_mday; } ;

/* Variables and functions */
 int FUNC0 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct rtc_time*) ; 
 int FUNC2 (struct rtc_time*) ; 

__attribute__((used)) static void FUNC3(struct rtc_time *tm)
{
	time64_t extra_days = FUNC0(tm);
	time64_t time = FUNC2(tm);
	FUNC1(time - extra_days * 86400, tm);

	/* Compensate if we went back over Nov 31st (will work up to 2381) */
	if (FUNC0(tm) < extra_days) {
		if (tm->tm_mon + 1 == 11)
			tm->tm_mday++;	/* This may result in 31! */
		else
			FUNC1(time - (extra_days - 1) * 86400, tm);
	}
}