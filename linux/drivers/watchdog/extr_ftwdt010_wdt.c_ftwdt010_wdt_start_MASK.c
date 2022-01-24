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
typedef  int u32 ;
struct watchdog_device {int timeout; } ;
struct ftwdt010_wdt {scalar_t__ base; scalar_t__ has_irq; } ;

/* Variables and functions */
 scalar_t__ FTWDT010_WDCR ; 
 scalar_t__ FTWDT010_WDLOAD ; 
 scalar_t__ FTWDT010_WDRESTART ; 
 int WDCR_CLOCK_5MHZ ; 
 int WDCR_ENABLE ; 
 int WDCR_SYS_RST ; 
 int WDCR_WDINTR ; 
 int WDRESTART_MAGIC ; 
 int WDT_CLOCK ; 
 struct ftwdt010_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct ftwdt010_wdt *gwdt = FUNC0(wdd);
	u32 enable;

	FUNC1(wdd->timeout * WDT_CLOCK, gwdt->base + FTWDT010_WDLOAD);
	FUNC1(WDRESTART_MAGIC, gwdt->base + FTWDT010_WDRESTART);
	/* set clock before enabling */
	enable = WDCR_CLOCK_5MHZ | WDCR_SYS_RST;
	FUNC1(enable, gwdt->base + FTWDT010_WDCR);
	if (gwdt->has_irq)
		enable |= WDCR_WDINTR;
	enable |= WDCR_ENABLE;
	FUNC1(enable, gwdt->base + FTWDT010_WDCR);

	return 0;
}