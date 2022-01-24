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
struct armada_37xx_watchdog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_ID_RETRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct armada_37xx_watchdog*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct armada_37xx_watchdog*,int /*<<< orphan*/ ) ; 
 struct armada_37xx_watchdog* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt)
{
	struct armada_37xx_watchdog *dev = FUNC2(wdt);

	/* counter 1 is retriggered by forcing end count on counter 0 */
	FUNC0(dev, CNTR_ID_RETRIGGER);
	FUNC1(dev, CNTR_ID_RETRIGGER);

	return 0;
}