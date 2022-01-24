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
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_DAYS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_HOURS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_MINUTES_REG ; 
 int /*<<< orphan*/  OMAP_RTC_MONTHS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_SECONDS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_YEARS_REG ; 
 struct omap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_time *tm)
{
	struct omap_rtc *rtc = FUNC0(dev);

	FUNC7(tm);

	FUNC1();
	FUNC3(rtc);

	rtc->type->unlock(rtc);
	FUNC4(rtc, OMAP_RTC_YEARS_REG, tm->tm_year);
	FUNC4(rtc, OMAP_RTC_MONTHS_REG, tm->tm_mon);
	FUNC4(rtc, OMAP_RTC_DAYS_REG, tm->tm_mday);
	FUNC4(rtc, OMAP_RTC_HOURS_REG, tm->tm_hour);
	FUNC4(rtc, OMAP_RTC_MINUTES_REG, tm->tm_min);
	FUNC4(rtc, OMAP_RTC_SECONDS_REG, tm->tm_sec);
	rtc->type->lock(rtc);

	FUNC2();

	return 0;
}