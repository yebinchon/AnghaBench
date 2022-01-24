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
struct da9055_wdt_data {struct da9055* da9055; } ;
struct da9055 {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int user_time; int reg_val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DA9055_REG_CONTROL_B ; 
 int /*<<< orphan*/  DA9055_TWDSCALE_MASK ; 
 int DA9055_TWDSCALE_SHIFT ; 
 int EINVAL ; 
 int FUNC1 (struct da9055*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* da9055_wdt_maps ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct da9055_wdt_data* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev,
				  unsigned int timeout)
{
	struct da9055_wdt_data *driver_data = FUNC3(wdt_dev);
	struct da9055 *da9055 = driver_data->da9055;
	int ret, i;

	for (i = 0; i < FUNC0(da9055_wdt_maps); i++)
		if (da9055_wdt_maps[i].user_time == timeout)
			break;

	if (i == FUNC0(da9055_wdt_maps))
		ret = -EINVAL;
	else
		ret = FUNC1(da9055, DA9055_REG_CONTROL_B,
					DA9055_TWDSCALE_MASK,
					da9055_wdt_maps[i].reg_val <<
					DA9055_TWDSCALE_SHIFT);
	if (ret < 0) {
		FUNC2(da9055->dev,
			"Failed to update timescale bit, %d\n", ret);
		return ret;
	}

	wdt_dev->timeout = timeout;

	return 0;
}