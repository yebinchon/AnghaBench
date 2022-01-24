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
struct sirfsoc_rtc_drv {unsigned long overflow_rtc; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
 int /*<<< orphan*/  RTC_CN ; 
 unsigned long RTC_SHIFT ; 
 int /*<<< orphan*/  RTC_SW_VALUE ; 
 struct sirfsoc_rtc_drv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		struct rtc_time *tm)
{
	unsigned long rtc_time;
	struct sirfsoc_rtc_drv *rtcdrv;
	rtcdrv = FUNC0(dev);

	FUNC1(tm, &rtc_time);

	rtcdrv->overflow_rtc = rtc_time >> (BITS_PER_LONG - RTC_SHIFT);

	FUNC2(rtcdrv, RTC_SW_VALUE, rtcdrv->overflow_rtc);
	FUNC2(rtcdrv, RTC_CN, rtc_time << RTC_SHIFT);

	return 0;
}