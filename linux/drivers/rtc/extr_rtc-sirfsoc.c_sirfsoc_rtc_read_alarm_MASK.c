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
struct sirfsoc_rtc_drv {int overflow_rtc; int /*<<< orphan*/  lock; } ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  RTC_ALARM0 ; 
 int /*<<< orphan*/  RTC_CN ; 
 int RTC_SHIFT ; 
 int /*<<< orphan*/  RTC_STATUS ; 
 int SIRFSOC_RTC_AL0E ; 
 struct sirfsoc_rtc_drv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_wkalrm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
		struct rtc_wkalrm *alrm)
{
	unsigned long rtc_alarm, rtc_count;
	struct sirfsoc_rtc_drv *rtcdrv;

	rtcdrv = FUNC0(dev);

	FUNC4(&rtcdrv->lock);

	rtc_count = FUNC3(rtcdrv, RTC_CN);

	rtc_alarm = FUNC3(rtcdrv, RTC_ALARM0);
	FUNC1(alrm, 0, sizeof(struct rtc_wkalrm));

	/*
	 * assume alarm interval not beyond one round counter overflow_rtc:
	 * 0->0xffffffff
	 */
	/* if alarm is in next overflow cycle */
	if (rtc_count > rtc_alarm)
		FUNC2((rtcdrv->overflow_rtc + 1)
				<< (BITS_PER_LONG - RTC_SHIFT)
				| rtc_alarm >> RTC_SHIFT, &(alrm->time));
	else
		FUNC2(rtcdrv->overflow_rtc
				<< (BITS_PER_LONG - RTC_SHIFT)
				| rtc_alarm >> RTC_SHIFT, &(alrm->time));
	if (FUNC3(rtcdrv, RTC_STATUS) & SIRFSOC_RTC_AL0E)
		alrm->enabled = 1;

	FUNC5(&rtcdrv->lock);

	return 0;
}