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
typedef  scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct rtc_time*) ; 
 scalar_t__ FUNC2 (struct rtc_time*) ; 

__attribute__((used)) static void FUNC3(struct rtc_time *tm)
{
	/* If it's Nov 31st, rtc_tm_to_time64() will count that like Dec 1st */
	time64_t time = FUNC2(tm);
	FUNC1(time + FUNC0(tm) * 86400, tm);
}