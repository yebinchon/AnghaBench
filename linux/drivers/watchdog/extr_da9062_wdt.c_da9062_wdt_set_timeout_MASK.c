#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct da9062_watchdog {TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (struct da9062_watchdog*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct da9062_watchdog* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/ * wdt_timeout ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd,
				  unsigned int timeout)
{
	struct da9062_watchdog *wdt = FUNC3(wdd);
	unsigned int selector;
	int ret;

	selector = FUNC0(timeout);
	ret = FUNC1(wdt, selector);
	if (ret)
		FUNC2(wdt->hw->dev, "Failed to set watchdog timeout (err = %d)\n",
			ret);
	else
		wdd->timeout = wdt_timeout[selector];

	return ret;
}