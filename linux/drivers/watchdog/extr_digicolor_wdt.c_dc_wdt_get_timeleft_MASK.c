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
typedef  unsigned int uint32_t ;
struct watchdog_device {int dummy; } ;
struct dc_wdt {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TIMER_A_COUNT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 struct dc_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC3(struct watchdog_device *wdog)
{
	struct dc_wdt *wdt = FUNC2(wdog);
	uint32_t count = FUNC1(wdt->base + TIMER_A_COUNT);

	return count / FUNC0(wdt->clk);
}