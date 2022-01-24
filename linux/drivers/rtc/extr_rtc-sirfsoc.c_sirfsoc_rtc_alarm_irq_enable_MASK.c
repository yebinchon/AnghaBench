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
struct sirfsoc_rtc_drv {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_STATUS ; 
 unsigned long SIRFSOC_RTC_AL0E ; 
 struct sirfsoc_rtc_drv* FUNC0 (struct device*) ; 
 unsigned long FUNC1 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
		unsigned int enabled)
{
	unsigned long rtc_status_reg = 0x0;
	struct sirfsoc_rtc_drv *rtcdrv;

	rtcdrv = FUNC0(dev);

	FUNC3(&rtcdrv->lock);

	rtc_status_reg = FUNC1(rtcdrv, RTC_STATUS);
	if (enabled)
		rtc_status_reg |= SIRFSOC_RTC_AL0E;
	else
		rtc_status_reg &= ~SIRFSOC_RTC_AL0E;

	FUNC2(rtcdrv, RTC_STATUS, rtc_status_reg);

	FUNC4(&rtcdrv->lock);

	return 0;

}