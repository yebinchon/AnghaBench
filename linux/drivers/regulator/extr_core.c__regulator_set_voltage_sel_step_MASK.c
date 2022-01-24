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
struct regulator_ops {int (* get_voltage_sel ) (struct regulator_dev*) ;int (* set_voltage_sel ) (struct regulator_dev*,int) ;} ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int vsel_step; struct regulator_ops* ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct regulator_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*,int) ; 
 int FUNC4 (struct regulator_dev*,int) ; 
 int FUNC5 (struct regulator_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev,
					   int uV, int new_selector)
{
	const struct regulator_ops *ops = rdev->desc->ops;
	int diff, old_sel, curr_sel, ret;

	/* Stepping is only needed if the regulator is enabled. */
	if (!FUNC1(rdev))
		goto final_set;

	if (!ops->get_voltage_sel)
		return -EINVAL;

	old_sel = ops->get_voltage_sel(rdev);
	if (old_sel < 0)
		return old_sel;

	diff = new_selector - old_sel;
	if (diff == 0)
		return 0; /* No change needed. */

	if (diff > 0) {
		/* Stepping up. */
		for (curr_sel = old_sel + rdev->desc->vsel_step;
		     curr_sel < new_selector;
		     curr_sel += rdev->desc->vsel_step) {
			/*
			 * Call the callback directly instead of using
			 * _regulator_call_set_voltage_sel() as we don't
			 * want to notify anyone yet. Same in the branch
			 * below.
			 */
			ret = ops->set_voltage_sel(rdev, curr_sel);
			if (ret)
				goto try_revert;
		}
	} else {
		/* Stepping down. */
		for (curr_sel = old_sel - rdev->desc->vsel_step;
		     curr_sel > new_selector;
		     curr_sel -= rdev->desc->vsel_step) {
			ret = ops->set_voltage_sel(rdev, curr_sel);
			if (ret)
				goto try_revert;
		}
	}

final_set:
	/* The final selector will trigger the notifiers. */
	return FUNC0(rdev, uV, new_selector);

try_revert:
	/*
	 * At least try to return to the previous voltage if setting a new
	 * one failed.
	 */
	(void)ops->set_voltage_sel(rdev, old_sel);
	return ret;
}