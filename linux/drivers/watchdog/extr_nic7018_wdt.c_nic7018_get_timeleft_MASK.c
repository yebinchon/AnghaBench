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
typedef  int u8 ;
struct watchdog_device {int dummy; } ;
struct nic7018_wdt {int /*<<< orphan*/  period; scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ WDT_COUNT ; 
 int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct nic7018_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC3(struct watchdog_device *wdd)
{
	struct nic7018_wdt *wdt = FUNC2(wdd);
	u8 count;

	count = FUNC0(wdt->io_base + WDT_COUNT) & 0xF;
	if (!count)
		return 0;

	return FUNC1(wdt->period, count);
}