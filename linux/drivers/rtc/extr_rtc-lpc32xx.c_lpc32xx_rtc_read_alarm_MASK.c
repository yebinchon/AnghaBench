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
struct rtc_wkalrm {int pending; int /*<<< orphan*/  time; int /*<<< orphan*/  enabled; } ;
struct lpc32xx_rtc {int /*<<< orphan*/  alarm_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC32XX_RTC_INTSTAT ; 
 int LPC32XX_RTC_INTSTAT_MATCH0 ; 
 int /*<<< orphan*/  LPC32XX_RTC_MATCH0 ; 
 struct lpc32xx_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct lpc32xx_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
	struct rtc_wkalrm *wkalrm)
{
	struct lpc32xx_rtc *rtc = FUNC0(dev);

	FUNC2(FUNC1(rtc, LPC32XX_RTC_MATCH0), &wkalrm->time);
	wkalrm->enabled = rtc->alarm_enabled;
	wkalrm->pending = !!(FUNC1(rtc, LPC32XX_RTC_INTSTAT) &
		LPC32XX_RTC_INTSTAT_MATCH0);

	return FUNC3(&wkalrm->time);
}