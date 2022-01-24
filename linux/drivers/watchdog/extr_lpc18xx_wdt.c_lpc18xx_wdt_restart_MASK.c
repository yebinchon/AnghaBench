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
struct lpc18xx_wdt_dev {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LPC18XX_WDT_FEED ; 
 int LPC18XX_WDT_FEED_MAGIC1 ; 
 int LPC18XX_WDT_FEED_MAGIC2 ; 
 scalar_t__ LPC18XX_WDT_MOD ; 
 int LPC18XX_WDT_MOD_WDEN ; 
 int LPC18XX_WDT_MOD_WDRESET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct lpc18xx_wdt_dev* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdt_dev,
			       unsigned long action, void *data)
{
	struct lpc18xx_wdt_dev *lpc18xx_wdt = FUNC3(wdt_dev);
	unsigned long flags;
	int val;

	/*
	 * Incorrect feed sequence causes immediate watchdog reset if enabled.
	 */
	FUNC1(&lpc18xx_wdt->lock, flags);

	val = FUNC0(lpc18xx_wdt->base + LPC18XX_WDT_MOD);
	val |= LPC18XX_WDT_MOD_WDEN;
	val |= LPC18XX_WDT_MOD_WDRESET;
	FUNC4(val, lpc18xx_wdt->base + LPC18XX_WDT_MOD);

	FUNC4(LPC18XX_WDT_FEED_MAGIC1, lpc18xx_wdt->base + LPC18XX_WDT_FEED);
	FUNC4(LPC18XX_WDT_FEED_MAGIC2, lpc18xx_wdt->base + LPC18XX_WDT_FEED);

	FUNC4(LPC18XX_WDT_FEED_MAGIC1, lpc18xx_wdt->base + LPC18XX_WDT_FEED);
	FUNC4(LPC18XX_WDT_FEED_MAGIC1, lpc18xx_wdt->base + LPC18XX_WDT_FEED);

	FUNC2(&lpc18xx_wdt->lock, flags);

	return 0;
}