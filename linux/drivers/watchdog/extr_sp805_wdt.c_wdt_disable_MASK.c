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
struct sp805_wdt {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK ; 
 int /*<<< orphan*/  UNLOCK ; 
 scalar_t__ WDTCONTROL ; 
 scalar_t__ WDTLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sp805_wdt* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdd)
{
	struct sp805_wdt *wdt = FUNC4(wdd);

	FUNC2(&wdt->lock);

	FUNC5(UNLOCK, wdt->base + WDTLOCK);
	FUNC5(0, wdt->base + WDTCONTROL);
	FUNC5(LOCK, wdt->base + WDTLOCK);

	/* Flush posted writes. */
	FUNC1(wdt->base + WDTLOCK);
	FUNC3(&wdt->lock);

	FUNC0(wdt->clk);

	return 0;
}