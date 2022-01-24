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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_rtc {int /*<<< orphan*/  pctldev; TYPE_1__* type; scalar_t__ has_ext_clk; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_OSC_REG ; 
 int /*<<< orphan*/  OMAP_RTC_OSC_SEL_32KCLK_SRC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * omap_rtc_power_off ; 
 struct omap_rtc* omap_rtc_power_off_rtc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap_rtc* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_rtc*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct omap_rtc *rtc = FUNC4(pdev);
	u8 reg;

	if (pm_power_off == omap_rtc_power_off &&
			omap_rtc_power_off_rtc == rtc) {
		pm_power_off = NULL;
		omap_rtc_power_off_rtc = NULL;
	}

	FUNC2(&pdev->dev, 0);

	if (!FUNC0(rtc->clk))
		FUNC1(rtc->clk);

	rtc->type->unlock(rtc);
	/* leave rtc running, but disable irqs */
	FUNC8(rtc, OMAP_RTC_INTERRUPTS_REG, 0);

	if (rtc->has_ext_clk) {
		reg = FUNC7(rtc, OMAP_RTC_OSC_REG);
		reg &= ~OMAP_RTC_OSC_SEL_32KCLK_SRC;
		FUNC8(rtc, OMAP_RTC_OSC_REG, reg);
	}

	rtc->type->lock(rtc);

	/* Disable the clock/module */
	FUNC6(&pdev->dev);
	FUNC5(&pdev->dev);

	/* Remove ext_wakeup pinconf */
	FUNC3(rtc->pctldev);

	return 0;
}