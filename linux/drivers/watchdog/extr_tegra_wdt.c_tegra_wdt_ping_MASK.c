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
struct tegra_wdt {scalar_t__ wdt_regs; } ;

/* Variables and functions */
 scalar_t__ WDT_CMD ; 
 int /*<<< orphan*/  WDT_CMD_START_COUNTER ; 
 struct tegra_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct tegra_wdt *wdt = FUNC0(wdd);

	FUNC1(WDT_CMD_START_COUNTER, wdt->wdt_regs + WDT_CMD);

	return 0;
}