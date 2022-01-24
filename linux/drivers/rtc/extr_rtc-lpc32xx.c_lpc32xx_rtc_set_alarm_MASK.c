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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct lpc32xx_rtc {int /*<<< orphan*/  lock; scalar_t__ alarm_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC32XX_RTC_CTRL ; 
 unsigned long LPC32XX_RTC_CTRL_MATCH0 ; 
 int /*<<< orphan*/  LPC32XX_RTC_INTSTAT ; 
 unsigned long LPC32XX_RTC_INTSTAT_MATCH0 ; 
 int /*<<< orphan*/  LPC32XX_RTC_MATCH0 ; 
 struct lpc32xx_rtc* FUNC0 (struct device*) ; 
 unsigned long FUNC1 (struct lpc32xx_rtc*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc32xx_rtc*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
	struct rtc_wkalrm *wkalrm)
{
	struct lpc32xx_rtc *rtc = FUNC0(dev);
	unsigned long alarmsecs;
	u32 tmp;

	alarmsecs = FUNC2(&wkalrm->time);

	FUNC4(&rtc->lock);

	/* Disable alarm during update */
	tmp = FUNC1(rtc, LPC32XX_RTC_CTRL);
	FUNC3(rtc, LPC32XX_RTC_CTRL, tmp & ~LPC32XX_RTC_CTRL_MATCH0);

	FUNC3(rtc, LPC32XX_RTC_MATCH0, alarmsecs);

	rtc->alarm_enabled = wkalrm->enabled;
	if (wkalrm->enabled) {
		FUNC3(rtc, LPC32XX_RTC_INTSTAT,
			   LPC32XX_RTC_INTSTAT_MATCH0);
		FUNC3(rtc, LPC32XX_RTC_CTRL, tmp |
			   LPC32XX_RTC_CTRL_MATCH0);
	}

	FUNC5(&rtc->lock);

	return 0;
}