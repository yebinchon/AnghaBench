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
 int ALI_7101_GPIO_O ; 
 int ALI_7101_WDT ; 
 char ALI_WDT_ARM ; 
 scalar_t__ WDT_INTERVAL ; 
 int /*<<< orphan*/  alim7101_pmu ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  next_heartbeat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ use_gpio ; 

__attribute__((used)) static void FUNC5(struct timer_list *unused)
{
	/* If we got a heartbeat pulse within the WDT_US_INTERVAL
	 * we agree to ping the WDT
	 */
	char tmp;

	if (FUNC4(jiffies, next_heartbeat)) {
		/* Ping the WDT (this is actually a disarm/arm sequence) */
		FUNC1(alim7101_pmu, 0x92, &tmp);
		FUNC2(alim7101_pmu,
					ALI_7101_WDT, (tmp & ~ALI_WDT_ARM));
		FUNC2(alim7101_pmu,
					ALI_7101_WDT, (tmp | ALI_WDT_ARM));
		if (use_gpio) {
			FUNC1(alim7101_pmu,
					ALI_7101_GPIO_O, &tmp);
			FUNC2(alim7101_pmu,
					ALI_7101_GPIO_O, tmp | 0x20);
			FUNC2(alim7101_pmu,
					ALI_7101_GPIO_O, tmp & ~0x20);
		}
	} else {
		FUNC3("Heartbeat lost! Will not ping the watchdog\n");
	}
	/* Re-set the timer interval */
	FUNC0(&timer, jiffies + WDT_INTERVAL);
}