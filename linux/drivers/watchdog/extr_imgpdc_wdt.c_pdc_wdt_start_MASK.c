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
struct pdc_wdt_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PDC_WDT_CONFIG ; 
 unsigned int PDC_WDT_CONFIG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct pdc_wdt_dev*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 struct pdc_wdt_dev* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev)
{
	unsigned int val;
	struct pdc_wdt_dev *wdt = FUNC2(wdt_dev);

	FUNC0(wdt);

	val = FUNC1(wdt->base + PDC_WDT_CONFIG);
	val |= PDC_WDT_CONFIG_ENABLE;
	FUNC3(val, wdt->base + PDC_WDT_CONFIG);

	return 0;
}