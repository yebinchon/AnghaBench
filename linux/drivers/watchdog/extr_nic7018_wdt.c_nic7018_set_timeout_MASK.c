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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct nic7018_wdt {int /*<<< orphan*/  period; scalar_t__ io_base; } ;
struct nic7018_config {int divider; int /*<<< orphan*/  period; } ;

/* Variables and functions */
 scalar_t__ WDT_PRESET_PRESCALE ; 
 struct nic7018_config* FUNC0 (unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct nic7018_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd,
			       unsigned int timeout)
{
	struct nic7018_wdt *wdt = FUNC3(wdd);
	const struct nic7018_config *config;
	u8 counter;

	config = FUNC0(timeout, &counter);

	FUNC2(counter << 4 | config->divider,
	     wdt->io_base + WDT_PRESET_PRESCALE);

	wdd->timeout = FUNC1(config->period, counter);
	wdt->period = config->period;

	return 0;
}