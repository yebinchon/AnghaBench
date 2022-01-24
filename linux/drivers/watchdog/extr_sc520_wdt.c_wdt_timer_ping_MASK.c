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
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ WDT_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  next_heartbeat ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  wdt_spinlock ; 
 int /*<<< orphan*/  wdtmrctl ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct timer_list *unused)
{
	/* If we got a heartbeat pulse within the WDT_US_INTERVAL
	 * we agree to ping the WDT
	 */
	if (FUNC4(jiffies, next_heartbeat)) {
		/* Ping the WDT */
		FUNC2(&wdt_spinlock);
		FUNC5(0xAAAA, wdtmrctl);
		FUNC5(0x5555, wdtmrctl);
		FUNC3(&wdt_spinlock);

		/* Re-set the timer interval */
		FUNC0(&timer, jiffies + WDT_INTERVAL);
	} else
		FUNC1("Heartbeat lost! Will not ping the watchdog\n");
}