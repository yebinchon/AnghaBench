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
struct aspeed_wdt {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDT_CTRL_BOOT_SECONDARY ; 
 int WDT_RATE_1MHZ ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_wdt*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct aspeed_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd,
			      unsigned long action, void *data)
{
	struct aspeed_wdt *wdt = FUNC2(wdd);

	wdt->ctrl &= ~WDT_CTRL_BOOT_SECONDARY;
	FUNC0(wdt, 128 * WDT_RATE_1MHZ / 1000);

	FUNC1(1000);

	return 0;
}