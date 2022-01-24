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
struct watchdog_device {unsigned int timeout; } ;
struct dc_wdt {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_wdt*,unsigned int) ; 
 struct dc_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdog, unsigned int t)
{
	struct dc_wdt *wdt = FUNC2(wdog);

	FUNC1(wdt, t * FUNC0(wdt->clk));
	wdog->timeout = t;

	return 0;
}