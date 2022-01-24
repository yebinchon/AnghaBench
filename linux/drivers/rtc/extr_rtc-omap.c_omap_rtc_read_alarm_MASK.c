#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct omap_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_ALARM_DAYS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_HOURS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_MINUTES_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_MONTHS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_SECONDS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_YEARS_REG ; 
 int OMAP_RTC_INTERRUPTS_IT_ALARM ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_REG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct omap_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_rtc*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alm)
{
	struct omap_rtc *rtc = FUNC1(dev);
	u8 interrupts;

	FUNC2();
	FUNC5(rtc);

	alm->time.tm_sec = FUNC4(rtc, OMAP_RTC_ALARM_SECONDS_REG);
	alm->time.tm_min = FUNC4(rtc, OMAP_RTC_ALARM_MINUTES_REG);
	alm->time.tm_hour = FUNC4(rtc, OMAP_RTC_ALARM_HOURS_REG);
	alm->time.tm_mday = FUNC4(rtc, OMAP_RTC_ALARM_DAYS_REG);
	alm->time.tm_mon = FUNC4(rtc, OMAP_RTC_ALARM_MONTHS_REG);
	alm->time.tm_year = FUNC4(rtc, OMAP_RTC_ALARM_YEARS_REG);

	FUNC3();

	FUNC0(&alm->time);

	interrupts = FUNC4(rtc, OMAP_RTC_INTERRUPTS_REG);
	alm->enabled = !!(interrupts & OMAP_RTC_INTERRUPTS_IT_ALARM);

	return 0;
}