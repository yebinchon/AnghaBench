#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_2__ time; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;scalar_t__ has_irqwakeen; int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_ALARM_DAYS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_HOURS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_MINUTES_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_MONTHS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_SECONDS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_ALARM_YEARS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_IT_ALARM ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_IRQWAKEEN ; 
 int /*<<< orphan*/  OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN ; 
 struct omap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *alm)
{
	struct omap_rtc *rtc = FUNC0(dev);
	u8 reg, irqwake_reg = 0;

	FUNC8(&alm->time);

	FUNC1();
	FUNC4(rtc);

	rtc->type->unlock(rtc);
	FUNC5(rtc, OMAP_RTC_ALARM_YEARS_REG, alm->time.tm_year);
	FUNC5(rtc, OMAP_RTC_ALARM_MONTHS_REG, alm->time.tm_mon);
	FUNC5(rtc, OMAP_RTC_ALARM_DAYS_REG, alm->time.tm_mday);
	FUNC5(rtc, OMAP_RTC_ALARM_HOURS_REG, alm->time.tm_hour);
	FUNC5(rtc, OMAP_RTC_ALARM_MINUTES_REG, alm->time.tm_min);
	FUNC5(rtc, OMAP_RTC_ALARM_SECONDS_REG, alm->time.tm_sec);

	reg = FUNC3(rtc, OMAP_RTC_INTERRUPTS_REG);
	if (rtc->type->has_irqwakeen)
		irqwake_reg = FUNC3(rtc, OMAP_RTC_IRQWAKEEN);

	if (alm->enabled) {
		reg |= OMAP_RTC_INTERRUPTS_IT_ALARM;
		irqwake_reg |= OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
	} else {
		reg &= ~OMAP_RTC_INTERRUPTS_IT_ALARM;
		irqwake_reg &= ~OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
	}
	FUNC5(rtc, OMAP_RTC_INTERRUPTS_REG, reg);
	if (rtc->type->has_irqwakeen)
		FUNC5(rtc, OMAP_RTC_IRQWAKEEN, irqwake_reg);
	rtc->type->lock(rtc);

	FUNC2();

	return 0;
}