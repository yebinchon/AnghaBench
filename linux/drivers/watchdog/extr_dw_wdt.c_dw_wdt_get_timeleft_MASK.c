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
struct dw_wdt {unsigned int rate; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ WDOG_CURRENT_COUNT_REG_OFFSET ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct dw_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC2(struct watchdog_device *wdd)
{
	struct dw_wdt *dw_wdt = FUNC1(wdd);

	return FUNC0(dw_wdt->regs + WDOG_CURRENT_COUNT_REG_OFFSET) /
		dw_wdt->rate;
}