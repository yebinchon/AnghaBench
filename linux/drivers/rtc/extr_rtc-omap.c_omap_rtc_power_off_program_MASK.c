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
typedef  int u32 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_ALARM2_DAYS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM2_HOURS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM2_MINUTES_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM2_MONTHS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM2_SECONDS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM2_YEARS_REG ; 
 int OMAP_RTC_INTERRUPTS_IT_ALARM2 ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_REG ; 
 int OMAP_RTC_PMIC_POWER_EN_EN ; 
 int /*<<< orphan*/  OMAP_RTC_PMIC_REG ; 
 int /*<<< orphan*/  OMAP_RTC_SECONDS_REG ; 
 int OMAP_RTC_STATUS_ALARM2 ; 
 int /*<<< orphan*/  OMAP_RTC_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*) ; 
 struct omap_rtc* omap_rtc_power_off_rtc ; 
 int /*<<< orphan*/  FUNC1 (struct omap_rtc*,struct rtc_time*) ; 
 int FUNC2 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct rtc_time*) ; 
 unsigned long FUNC5 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtc_time*) ; 

int FUNC12(struct device *dev)
{
	struct omap_rtc *rtc = omap_rtc_power_off_rtc;
	struct rtc_time tm;
	unsigned long now;
	int seconds;
	u32 val;

	rtc->type->unlock(rtc);
	/* enable pmic_power_en control */
	val = FUNC3(rtc, OMAP_RTC_PMIC_REG);
	FUNC8(rtc, OMAP_RTC_PMIC_REG, val | OMAP_RTC_PMIC_POWER_EN_EN);

again:
	/* Clear any existing ALARM2 event */
	FUNC8(rtc, OMAP_RTC_STATUS_REG, OMAP_RTC_STATUS_ALARM2);

	/* set alarm one second from now */
	FUNC1(rtc, &tm);
	seconds = tm.tm_sec;
	FUNC0(&tm);
	now = FUNC5(&tm);
	FUNC4(now + 1, &tm);

	FUNC11(&tm);

	FUNC6(rtc);

	FUNC7(rtc, OMAP_RTC_ALARM2_SECONDS_REG, tm.tm_sec);
	FUNC7(rtc, OMAP_RTC_ALARM2_MINUTES_REG, tm.tm_min);
	FUNC7(rtc, OMAP_RTC_ALARM2_HOURS_REG, tm.tm_hour);
	FUNC7(rtc, OMAP_RTC_ALARM2_DAYS_REG, tm.tm_mday);
	FUNC7(rtc, OMAP_RTC_ALARM2_MONTHS_REG, tm.tm_mon);
	FUNC7(rtc, OMAP_RTC_ALARM2_YEARS_REG, tm.tm_year);

	/*
	 * enable ALARM2 interrupt
	 *
	 * NOTE: this fails on AM3352 if rtc_write (writeb) is used
	 */
	val = FUNC2(rtc, OMAP_RTC_INTERRUPTS_REG);
	FUNC8(rtc, OMAP_RTC_INTERRUPTS_REG,
			val | OMAP_RTC_INTERRUPTS_IT_ALARM2);

	/* Retry in case roll over happened before alarm was armed. */
	if (FUNC2(rtc, OMAP_RTC_SECONDS_REG) != seconds) {
		val = FUNC2(rtc, OMAP_RTC_STATUS_REG);
		if (!(val & OMAP_RTC_STATUS_ALARM2))
			goto again;
	}

	rtc->type->lock(rtc);

	return 0;
}