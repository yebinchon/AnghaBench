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
struct da9052_wdt_data {unsigned long jpast; struct da9052* da9052; } ;
struct da9052 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_CONTROLD_WATCHDOG ; 
 int /*<<< orphan*/  DA9052_CONTROL_D_REG ; 
 unsigned long DA9052_TWDMIN ; 
 unsigned long HZ ; 
 int FUNC0 (struct da9052*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct da9052_wdt_data* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt_dev)
{
	struct da9052_wdt_data *driver_data = FUNC2(wdt_dev);
	struct da9052 *da9052 = driver_data->da9052;
	unsigned long msec, jnow = jiffies;
	int ret;

	/*
	 * We have a minimum time for watchdog window called TWDMIN. A write
	 * to the watchdog before this elapsed time should cause an error.
	 */
	msec = (jnow - driver_data->jpast) * 1000/HZ;
	if (msec < DA9052_TWDMIN)
		FUNC1(msec);

	/* Reset the watchdog timer */
	ret = FUNC0(da9052, DA9052_CONTROL_D_REG,
				DA9052_CONTROLD_WATCHDOG, 1 << 7);
	if (ret < 0)
		return ret;

	/*
	 * FIXME: Reset the watchdog core, in general PMIC
	 * is supposed to do this
	 */
	return FUNC0(da9052, DA9052_CONTROL_D_REG,
				 DA9052_CONTROLD_WATCHDOG, 0 << 7);
}