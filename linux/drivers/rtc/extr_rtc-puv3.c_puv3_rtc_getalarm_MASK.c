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
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_RTAR ; 
 int /*<<< orphan*/  RTC_RTSR ; 
 int RTC_RTSR_ALE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,struct rtc_time*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct rtc_time *alm_tm = &alrm->time;

	FUNC2(FUNC1(RTC_RTAR), alm_tm);

	alrm->enabled = FUNC1(RTC_RTSR) & RTC_RTSR_ALE;

	FUNC0(dev, "read alarm: %d, %ptRr\n", alrm->enabled, alm_tm);

	return 0;
}