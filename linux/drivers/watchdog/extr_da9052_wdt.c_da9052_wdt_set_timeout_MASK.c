#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct watchdog_device {unsigned int timeout; } ;
struct da9052_wdt_data {int /*<<< orphan*/  jpast; struct da9052* da9052; } ;
struct da9052 {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int time; int /*<<< orphan*/  reg_val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DA9052_CONTROLD_TWDSCALE ; 
 int /*<<< orphan*/  DA9052_CONTROL_D_REG ; 
 int EINVAL ; 
 int FUNC1 (struct da9052*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* da9052_wdt_maps ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct da9052_wdt_data* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdt_dev,
				  unsigned int timeout)
{
	struct da9052_wdt_data *driver_data = FUNC4(wdt_dev);
	struct da9052 *da9052 = driver_data->da9052;
	int ret, i;

	/*
	 * Disable the Watchdog timer before setting
	 * new time out.
	 */
	ret = FUNC1(da9052, DA9052_CONTROL_D_REG,
				DA9052_CONTROLD_TWDSCALE, 0);
	if (ret < 0) {
		FUNC2(da9052->dev, "Failed to disable watchdog bit, %d\n",
			ret);
		return ret;
	}
	if (timeout) {
		/*
		 * To change the timeout, da9052 needs to
		 * be disabled for at least 150 us.
		 */
		FUNC3(150);

		/* Set the desired timeout */
		for (i = 0; i < FUNC0(da9052_wdt_maps); i++)
			if (da9052_wdt_maps[i].time == timeout)
				break;

		if (i == FUNC0(da9052_wdt_maps))
			ret = -EINVAL;
		else
			ret = FUNC1(da9052, DA9052_CONTROL_D_REG,
						DA9052_CONTROLD_TWDSCALE,
						da9052_wdt_maps[i].reg_val);
		if (ret < 0) {
			FUNC2(da9052->dev,
				"Failed to update timescale bit, %d\n", ret);
			return ret;
		}

		wdt_dev->timeout = timeout;
		driver_data->jpast = jiffies;
	}

	return 0;
}