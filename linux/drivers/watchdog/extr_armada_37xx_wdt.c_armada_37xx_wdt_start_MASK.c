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
struct armada_37xx_watchdog {int /*<<< orphan*/  timeout; int /*<<< orphan*/  cpu_misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_CTRL_MODE_HWSIG ; 
 int /*<<< orphan*/  CNTR_CTRL_MODE_ONESHOT ; 
 int /*<<< orphan*/  CNTR_CTRL_TRIG_SRC_PREV_CNTR ; 
 int /*<<< orphan*/  CNTR_ID_RETRIGGER ; 
 int /*<<< orphan*/  CNTR_ID_WDOG ; 
 int /*<<< orphan*/  WDT_TIMER_SELECT ; 
 int /*<<< orphan*/  WDT_TIMER_SELECT_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct armada_37xx_watchdog*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct armada_37xx_watchdog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct armada_37xx_watchdog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct armada_37xx_watchdog* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdt)
{
	struct armada_37xx_watchdog *dev = FUNC4(wdt);

	/* select counter 1 as watchdog counter */
	FUNC2(dev->cpu_misc, WDT_TIMER_SELECT, WDT_TIMER_SELECT_VAL);

	/* init counter 0 as retrigger counter for counter 1 */
	FUNC1(dev, CNTR_ID_RETRIGGER, CNTR_CTRL_MODE_ONESHOT, 0);
	FUNC3(dev, CNTR_ID_RETRIGGER, 0);

	/* init counter 1 to be retriggerable by counter 0 end count */
	FUNC1(dev, CNTR_ID_WDOG, CNTR_CTRL_MODE_HWSIG,
		     CNTR_CTRL_TRIG_SRC_PREV_CNTR);
	FUNC3(dev, CNTR_ID_WDOG, dev->timeout);

	/* enable counter 1 */
	FUNC0(dev, CNTR_ID_WDOG);

	/* start counter 1 by forcing immediate end count on counter 0 */
	FUNC0(dev, CNTR_ID_RETRIGGER);

	return 0;
}