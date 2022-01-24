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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ time64_t ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct dc_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DC_RTC_ALARM ; 
 scalar_t__ DC_RTC_INTENABLE ; 
 scalar_t__ DC_RTC_REFERENCE ; 
 struct dc_rtc* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct dc_rtc *rtc = FUNC0(dev);
	time64_t alarm_time;
	u32 reference;

	alarm_time = FUNC2(&alarm->time);

	reference = FUNC1(rtc->regs + DC_RTC_REFERENCE);
	FUNC4(alarm_time - reference, rtc->regs + DC_RTC_ALARM);

	FUNC3(!!alarm->enabled, rtc->regs + DC_RTC_INTENABLE);

	return 0;
}