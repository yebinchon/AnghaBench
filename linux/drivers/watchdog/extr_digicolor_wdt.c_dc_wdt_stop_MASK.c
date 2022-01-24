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
struct dc_wdt {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TIMER_A_CONTROL ; 
 struct dc_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdog)
{
	struct dc_wdt *wdt = FUNC0(wdog);

	FUNC1(0, wdt->base + TIMER_A_CONTROL);

	return 0;
}