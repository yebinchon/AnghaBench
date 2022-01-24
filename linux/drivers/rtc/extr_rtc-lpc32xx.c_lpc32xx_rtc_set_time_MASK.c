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
typedef  int u32 ;
struct rtc_time {int dummy; } ;
struct lpc32xx_rtc {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC32XX_RTC_CTRL ; 
 int LPC32XX_RTC_CTRL_CNTR_DIS ; 
 int /*<<< orphan*/  LPC32XX_RTC_DCOUNT ; 
 int /*<<< orphan*/  LPC32XX_RTC_UCOUNT ; 
 struct lpc32xx_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct lpc32xx_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc32xx_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *time)
{
	struct lpc32xx_rtc *rtc = FUNC0(dev);
	u32 secs = FUNC2(time);
	u32 tmp;

	FUNC4(&rtc->lock);

	/* RTC must be disabled during count update */
	tmp = FUNC1(rtc, LPC32XX_RTC_CTRL);
	FUNC3(rtc, LPC32XX_RTC_CTRL, tmp | LPC32XX_RTC_CTRL_CNTR_DIS);
	FUNC3(rtc, LPC32XX_RTC_UCOUNT, secs);
	FUNC3(rtc, LPC32XX_RTC_DCOUNT, 0xFFFFFFFF - secs);
	FUNC3(rtc, LPC32XX_RTC_CTRL, tmp &= ~LPC32XX_RTC_CTRL_CNTR_DIS);

	FUNC5(&rtc->lock);

	return 0;
}