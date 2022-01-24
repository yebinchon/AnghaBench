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
typedef  int uint32_t ;
struct watchdog_device {int dummy; } ;
struct bcm2835_wdt {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PM_WDOG ; 
 int PM_WDOG_TIME_SET ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 struct bcm2835_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC3(struct watchdog_device *wdog)
{
	struct bcm2835_wdt *wdt = FUNC2(wdog);

	uint32_t ret = FUNC1(wdt->base + PM_WDOG);
	return FUNC0(ret & PM_WDOG_TIME_SET);
}