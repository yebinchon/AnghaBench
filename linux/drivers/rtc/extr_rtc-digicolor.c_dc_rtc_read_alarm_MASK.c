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
typedef  unsigned long u32 ;
struct rtc_wkalrm {int pending; void* enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct dc_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DC_RTC_ALARM ; 
 scalar_t__ DC_RTC_INTENABLE ; 
 scalar_t__ DC_RTC_REFERENCE ; 
 int FUNC0 (struct dc_rtc*,unsigned long*) ; 
 struct dc_rtc* FUNC1 (struct device*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct dc_rtc *rtc = FUNC1(dev);
	u32 alarm_reg, reference;
	unsigned long now;
	int ret;

	alarm_reg = FUNC2(rtc->regs + DC_RTC_ALARM);
	reference = FUNC2(rtc->regs + DC_RTC_REFERENCE);
	FUNC3(reference + alarm_reg, &alarm->time);

	ret = FUNC0(rtc, &now);
	if (ret < 0)
		return ret;

	alarm->pending = alarm_reg + reference > now;
	alarm->enabled = FUNC2(rtc->regs + DC_RTC_INTENABLE);

	return 0;
}