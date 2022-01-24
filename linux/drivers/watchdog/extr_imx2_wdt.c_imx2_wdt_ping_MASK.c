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
struct watchdog_device {int dummy; } ;
struct imx2_wdt_device {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX2_WDT_SEQ1 ; 
 int /*<<< orphan*/  IMX2_WDT_SEQ2 ; 
 int /*<<< orphan*/  IMX2_WDT_WSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx2_wdt_device* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdog)
{
	struct imx2_wdt_device *wdev = FUNC1(wdog);

	FUNC0(wdev->regmap, IMX2_WDT_WSR, IMX2_WDT_SEQ1);
	FUNC0(wdev->regmap, IMX2_WDT_WSR, IMX2_WDT_SEQ2);
	return 0;
}