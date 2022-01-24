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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_RTC_TIME ; 
 scalar_t__ FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	time64_t time = FUNC1(tm);

	/* Avoid roll-over from reading the different registers */
	do {
		FUNC2(dev, MXC_RTC_TIME, time);
	} while (time != FUNC0(dev, MXC_RTC_TIME));

	return 0;
}