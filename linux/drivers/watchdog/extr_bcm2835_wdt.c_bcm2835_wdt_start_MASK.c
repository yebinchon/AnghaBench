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
typedef  int uint32_t ;
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct bcm2835_wdt {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int PM_PASSWORD ; 
 scalar_t__ PM_RSTC ; 
 int PM_RSTC_WRCFG_CLR ; 
 int PM_RSTC_WRCFG_FULL_RESET ; 
 scalar_t__ PM_WDOG ; 
 int PM_WDOG_TIME_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct bcm2835_wdt* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdog)
{
	struct bcm2835_wdt *wdt = FUNC4(wdog);
	uint32_t cur;
	unsigned long flags;

	FUNC2(&wdt->lock, flags);

	FUNC5(PM_PASSWORD | (FUNC0(wdog->timeout) &
				PM_WDOG_TIME_SET), wdt->base + PM_WDOG);
	cur = FUNC1(wdt->base + PM_RSTC);
	FUNC5(PM_PASSWORD | (cur & PM_RSTC_WRCFG_CLR) |
		  PM_RSTC_WRCFG_FULL_RESET, wdt->base + PM_RSTC);

	FUNC3(&wdt->lock, flags);

	return 0;
}