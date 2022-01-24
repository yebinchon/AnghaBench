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
typedef  int /*<<< orphan*/  u8 ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;scalar_t__ has_irqwakeen; int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
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

__attribute__((used)) static int FUNC8(struct device *dev, unsigned int enabled)
{
	struct omap_rtc *rtc = FUNC0(dev);
	u8 reg, irqwake_reg = 0;

	FUNC1();
	FUNC4(rtc);
	reg = FUNC3(rtc, OMAP_RTC_INTERRUPTS_REG);
	if (rtc->type->has_irqwakeen)
		irqwake_reg = FUNC3(rtc, OMAP_RTC_IRQWAKEEN);

	if (enabled) {
		reg |= OMAP_RTC_INTERRUPTS_IT_ALARM;
		irqwake_reg |= OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
	} else {
		reg &= ~OMAP_RTC_INTERRUPTS_IT_ALARM;
		irqwake_reg &= ~OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
	}
	FUNC4(rtc);
	rtc->type->unlock(rtc);
	FUNC5(rtc, OMAP_RTC_INTERRUPTS_REG, reg);
	if (rtc->type->has_irqwakeen)
		FUNC5(rtc, OMAP_RTC_IRQWAKEEN, irqwake_reg);
	rtc->type->lock(rtc);
	FUNC2();

	return 0;
}