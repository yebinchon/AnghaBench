#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ suspend_state_t ;
struct regulator_dev {int /*<<< orphan*/  dev; TYPE_3__* supply; TYPE_2__* desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  rdev; } ;
struct TYPE_5__ {scalar_t__ min_dropout_uV; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ get_voltage_sel; scalar_t__ get_voltage; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ PM_SUSPEND_ON ; 
 int /*<<< orphan*/  REGULATOR_CHANGE_VOLTAGE ; 
 int FUNC0 (struct regulator_dev*,int,int,scalar_t__) ; 
 int FUNC1 (struct regulator_dev*,int,int) ; 
 int FUNC2 (struct regulator_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct regulator_dev*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC9(struct regulator_dev *rdev, int min_uV,
			       int max_uV, suspend_state_t state)
{
	int best_supply_uV = 0;
	int supply_change_uV = 0;
	int ret;

	if (rdev->supply &&
	    FUNC7(rdev->supply->rdev,
				   REGULATOR_CHANGE_VOLTAGE) &&
	    (rdev->desc->min_dropout_uV || !(rdev->desc->ops->get_voltage ||
					   rdev->desc->ops->get_voltage_sel))) {
		int current_supply_uV;
		int selector;

		selector = FUNC6(rdev, min_uV, max_uV);
		if (selector < 0) {
			ret = selector;
			goto out;
		}

		best_supply_uV = FUNC2(rdev, selector, 0);
		if (best_supply_uV < 0) {
			ret = best_supply_uV;
			goto out;
		}

		best_supply_uV += rdev->desc->min_dropout_uV;

		current_supply_uV = FUNC5(rdev->supply->rdev);
		if (current_supply_uV < 0) {
			ret = current_supply_uV;
			goto out;
		}

		supply_change_uV = best_supply_uV - current_supply_uV;
	}

	if (supply_change_uV > 0) {
		ret = FUNC8(rdev->supply,
				best_supply_uV, INT_MAX, state);
		if (ret) {
			FUNC3(&rdev->dev, "Failed to increase supply voltage: %d\n",
					ret);
			goto out;
		}
	}

	if (state == PM_SUSPEND_ON)
		ret = FUNC1(rdev, min_uV, max_uV);
	else
		ret = FUNC0(rdev, min_uV,
							max_uV, state);
	if (ret < 0)
		goto out;

	if (supply_change_uV < 0) {
		ret = FUNC8(rdev->supply,
				best_supply_uV, INT_MAX, state);
		if (ret)
			FUNC4(&rdev->dev, "Failed to decrease supply voltage: %d\n",
					ret);
		/* No need to fail here */
		ret = 0;
	}

out:
	return ret;
}