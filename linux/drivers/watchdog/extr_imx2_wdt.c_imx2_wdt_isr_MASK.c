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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMX2_WDT_WICR ; 
 int /*<<< orphan*/  IMX2_WDT_WICR_WTIS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx2_wdt_device* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *wdog_arg)
{
	struct watchdog_device *wdog = wdog_arg;
	struct imx2_wdt_device *wdev = FUNC1(wdog);

	FUNC0(wdev->regmap, IMX2_WDT_WICR,
			  IMX2_WDT_WICR_WTIS, IMX2_WDT_WICR_WTIS);

	FUNC2(wdog);

	return IRQ_HANDLED;
}