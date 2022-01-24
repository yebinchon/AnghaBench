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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct imx2_wdt_device {int /*<<< orphan*/  regmap; int /*<<< orphan*/  ext_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX2_WDT_WCR ; 
 int /*<<< orphan*/  IMX2_WDT_WCR_WDE ; 
 int /*<<< orphan*/  IMX2_WDT_WCR_WDZST ; 
 int /*<<< orphan*/  IMX2_WDT_WCR_WRE ; 
 int /*<<< orphan*/  IMX2_WDT_WCR_WT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx2_wdt_device* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static inline void FUNC4(struct watchdog_device *wdog)
{
	struct imx2_wdt_device *wdev = FUNC3(wdog);
	u32 val;

	FUNC1(wdev->regmap, IMX2_WDT_WCR, &val);

	/* Suspend timer in low power mode, write once-only */
	val |= IMX2_WDT_WCR_WDZST;
	/* Strip the old watchdog Time-Out value */
	val &= ~IMX2_WDT_WCR_WT;
	/* Generate internal chip-level reset if WDOG times out */
	if (!wdev->ext_reset)
		val &= ~IMX2_WDT_WCR_WRE;
	/* Or if external-reset assert WDOG_B reset only on time-out */
	else
		val |= IMX2_WDT_WCR_WRE;
	/* Keep Watchdog Disabled */
	val &= ~IMX2_WDT_WCR_WDE;
	/* Set the watchdog's Time-Out value */
	val |= FUNC0(wdog->timeout);

	FUNC2(wdev->regmap, IMX2_WDT_WCR, val);

	/* enable the watchdog */
	val |= IMX2_WDT_WCR_WDE;
	FUNC2(wdev->regmap, IMX2_WDT_WCR, val);
}