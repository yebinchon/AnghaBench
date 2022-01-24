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
typedef  int /*<<< orphan*/  u32 ;
struct lpc32xx_rtc {int alarm_enabled; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC32XX_RTC_CTRL ; 
 int /*<<< orphan*/  LPC32XX_RTC_CTRL_MATCH0 ; 
 struct lpc32xx_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc32xx_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc32xx_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
	unsigned int enabled)
{
	struct lpc32xx_rtc *rtc = FUNC0(dev);
	u32 tmp;

	FUNC3(&rtc->lock);
	tmp = FUNC1(rtc, LPC32XX_RTC_CTRL);

	if (enabled) {
		rtc->alarm_enabled = 1;
		tmp |= LPC32XX_RTC_CTRL_MATCH0;
	} else {
		rtc->alarm_enabled = 0;
		tmp &= ~LPC32XX_RTC_CTRL_MATCH0;
	}

	FUNC2(rtc, LPC32XX_RTC_CTRL, tmp);
	FUNC4(&rtc->lock);

	return 0;
}