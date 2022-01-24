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
struct lpc18xx_wdt_dev {scalar_t__ base; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ LPC18XX_WDT_MOD ; 
 unsigned int LPC18XX_WDT_MOD_WDEN ; 
 unsigned int LPC18XX_WDT_MOD_WDRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct lpc18xx_wdt_dev* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdt_dev)
{
	struct lpc18xx_wdt_dev *lpc18xx_wdt = FUNC4(wdt_dev);
	unsigned int val;

	if (FUNC3(&lpc18xx_wdt->timer))
		FUNC0(&lpc18xx_wdt->timer);

	val = FUNC2(lpc18xx_wdt->base + LPC18XX_WDT_MOD);
	val |= LPC18XX_WDT_MOD_WDEN;
	val |= LPC18XX_WDT_MOD_WDRESET;
	FUNC5(val, lpc18xx_wdt->base + LPC18XX_WDT_MOD);

	/*
	 * Setting the WDEN bit in the WDMOD register is not sufficient to
	 * enable the Watchdog. A valid feed sequence must be completed after
	 * setting WDEN before the Watchdog is capable of generating a reset.
	 */
	FUNC1(wdt_dev);

	return 0;
}