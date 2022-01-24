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
struct bcm47xx_wdt {int /*<<< orphan*/  soft_timer; } ;

/* Variables and functions */
 struct bcm47xx_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct bcm47xx_wdt *wdt = FUNC0(wdd);

	FUNC1(wdd);
	FUNC2(&wdt->soft_timer);

	return 0;
}