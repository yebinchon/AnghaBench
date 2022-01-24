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
struct mei_wdt {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ MEI_WDT_IDLE ; 
 scalar_t__ MEI_WDT_RUNNING ; 
 scalar_t__ MEI_WDT_STOPPING ; 
 int FUNC0 (struct mei_wdt*) ; 
 struct mei_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct mei_wdt *wdt = FUNC1(wdd);
	int ret;

	if (wdt->state != MEI_WDT_RUNNING)
		return 0;

	wdt->state = MEI_WDT_STOPPING;

	ret = FUNC0(wdt);
	if (ret)
		return ret;

	wdt->state = MEI_WDT_IDLE;

	return 0;
}