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
struct sama5d4_wdt {int /*<<< orphan*/  mr; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_WDT_WDDBGHLT ; 
 int /*<<< orphan*/  AT91_WDT_WDDIS ; 
 int /*<<< orphan*/  AT91_WDT_WDFIEN ; 
 int /*<<< orphan*/  AT91_WDT_WDIDLEHLT ; 
 int /*<<< orphan*/  AT91_WDT_WDRSTEN ; 
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np, struct sama5d4_wdt *wdt)
{
	const char *tmp;

	wdt->mr = AT91_WDT_WDDIS;

	if (!FUNC1(np, "atmel,watchdog-type", &tmp) &&
	    !FUNC2(tmp, "software"))
		wdt->mr |= AT91_WDT_WDFIEN;
	else
		wdt->mr |= AT91_WDT_WDRSTEN;

	if (FUNC0(np, "atmel,idle-halt"))
		wdt->mr |= AT91_WDT_WDIDLEHLT;

	if (FUNC0(np, "atmel,dbg-halt"))
		wdt->mr |= AT91_WDT_WDDBGHLT;

	return 0;
}