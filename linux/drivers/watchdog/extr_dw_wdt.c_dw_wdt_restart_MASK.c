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
struct dw_wdt {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_COUNTER_RESTART_KICK_VALUE ; 
 scalar_t__ WDOG_COUNTER_RESTART_REG_OFFSET ; 
 scalar_t__ WDOG_TIMEOUT_RANGE_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct dw_wdt*) ; 
 scalar_t__ FUNC1 (struct dw_wdt*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct dw_wdt* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdd,
			  unsigned long action, void *data)
{
	struct dw_wdt *dw_wdt = FUNC3(wdd);

	FUNC4(0, dw_wdt->regs + WDOG_TIMEOUT_RANGE_REG_OFFSET);
	if (FUNC1(dw_wdt))
		FUNC4(WDOG_COUNTER_RESTART_KICK_VALUE,
		       dw_wdt->regs + WDOG_COUNTER_RESTART_REG_OFFSET);
	else
		FUNC0(dw_wdt);

	/* wait for reset to assert... */
	FUNC2(500);

	return 0;
}