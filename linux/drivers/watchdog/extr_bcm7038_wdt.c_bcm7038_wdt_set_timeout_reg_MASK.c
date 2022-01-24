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
struct bcm7038_watchdog {int rate; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WDT_TIMEOUT_REG ; 
 struct bcm7038_watchdog* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct watchdog_device *wdog)
{
	struct bcm7038_watchdog *wdt = FUNC0(wdog);
	u32 timeout;

	timeout = wdt->rate * wdog->timeout;

	FUNC1(timeout, wdt->base + WDT_TIMEOUT_REG);
}