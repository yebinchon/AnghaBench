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
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_RTAR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  puv3_rtc_alarmno ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct rtc_time *tm = &alrm->time;
	unsigned long rtcalarm_count = 0;

	FUNC0(dev, "set alarm: %d, %ptRr\n", alrm->enabled, tm);

	FUNC4(tm, &rtcalarm_count);
	FUNC5(rtcalarm_count, RTC_RTAR);

	FUNC3(dev, alrm->enabled);

	if (alrm->enabled)
		FUNC2(puv3_rtc_alarmno);
	else
		FUNC1(puv3_rtc_alarmno);

	return 0;
}