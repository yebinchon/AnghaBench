#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {TYPE_1__ dev; } ;
struct TYPE_10__ {TYPE_2__* type; struct rtc_device* rtc; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* lock ) (TYPE_3__*) ;int /*<<< orphan*/  (* unlock ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int OMAP_RTC_PMIC_POWER_EN_EN ; 
 int /*<<< orphan*/  OMAP_RTC_PMIC_REG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* omap_rtc_power_off_rtc ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC8(void)
{
	struct rtc_device *rtc = omap_rtc_power_off_rtc->rtc;
	u32 val;

	FUNC3(rtc->dev.parent);

	/* Set PMIC power enable and EXT_WAKEUP in case PB power on is used */
	omap_rtc_power_off_rtc->type->unlock(omap_rtc_power_off_rtc);
	val = FUNC4(omap_rtc_power_off_rtc, OMAP_RTC_PMIC_REG);
	val |= OMAP_RTC_PMIC_POWER_EN_EN | FUNC1(0) |
			FUNC0(0);
	FUNC5(omap_rtc_power_off_rtc, OMAP_RTC_PMIC_REG, val);
	omap_rtc_power_off_rtc->type->lock(omap_rtc_power_off_rtc);

	/*
	 * Wait for alarm to trigger (within one second) and external PMIC to
	 * power off the system. Add a 500 ms margin for external latencies
	 * (e.g. debounce circuits).
	 */
	FUNC2(1500);
}