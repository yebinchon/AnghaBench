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
struct cdns_wdt {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_WDT_ZMR_OFFSET ; 
 int CDNS_WDT_ZMR_WDEN_MASK ; 
 int CDNS_WDT_ZMR_ZKEY_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct cdns_wdt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cdns_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct cdns_wdt *wdt = FUNC3(wdd);

	FUNC1(&wdt->io_lock);
	FUNC0(wdt, CDNS_WDT_ZMR_OFFSET,
			  CDNS_WDT_ZMR_ZKEY_VAL & (~CDNS_WDT_ZMR_WDEN_MASK));
	FUNC2(&wdt->io_lock);

	return 0;
}