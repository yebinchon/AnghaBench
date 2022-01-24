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
 struct dw_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct dw_wdt *dw_wdt = FUNC0(wdd);

	FUNC1(WDOG_COUNTER_RESTART_KICK_VALUE, dw_wdt->regs +
	       WDOG_COUNTER_RESTART_REG_OFFSET);

	return 0;
}