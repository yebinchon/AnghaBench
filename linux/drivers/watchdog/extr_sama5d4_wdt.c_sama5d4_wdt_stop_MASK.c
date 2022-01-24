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
struct sama5d4_wdt {int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_WDT_MR ; 
 int /*<<< orphan*/  AT91_WDT_WDDIS ; 
 struct sama5d4_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sama5d4_wdt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct sama5d4_wdt *wdt = FUNC0(wdd);

	wdt->mr |= AT91_WDT_WDDIS;
	FUNC1(wdt, AT91_WDT_MR, wdt->mr);

	return 0;
}