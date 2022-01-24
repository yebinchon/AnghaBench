#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_ops {int (* list_voltage ) (struct regulator_dev*,int) ;} ;
struct regulator_dev {TYPE_2__* desc; TYPE_1__* constraints; } ;
struct regulation_constraints {int min_uV; int max_uV; } ;
struct TYPE_4__ {int n_voltages; struct regulator_ops* ops; } ;
struct TYPE_3__ {int min_uV; int max_uV; scalar_t__ apply_uV; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTRECOVERABLE ; 
 int INT_MAX ; 
 int INT_MIN ; 
 int FUNC0 (struct regulator_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*,char*,int,int,...) ; 
 int FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct regulator_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev,
	struct regulation_constraints *constraints)
{
	const struct regulator_ops *ops = rdev->desc->ops;
	int ret;

	/* do we need to apply the constraint voltage */
	if (rdev->constraints->apply_uV &&
	    rdev->constraints->min_uV && rdev->constraints->max_uV) {
		int target_min, target_max;
		int current_uV = FUNC4(rdev);

		if (current_uV == -ENOTRECOVERABLE) {
			/* This regulator can't be read and must be initialized */
			FUNC3(rdev, "Setting %d-%duV\n",
				  rdev->constraints->min_uV,
				  rdev->constraints->max_uV);
			FUNC0(rdev,
						  rdev->constraints->min_uV,
						  rdev->constraints->max_uV);
			current_uV = FUNC4(rdev);
		}

		if (current_uV < 0) {
			FUNC2(rdev,
				 "failed to get the current voltage(%d)\n",
				 current_uV);
			return current_uV;
		}

		/*
		 * If we're below the minimum voltage move up to the
		 * minimum voltage, if we're above the maximum voltage
		 * then move down to the maximum.
		 */
		target_min = current_uV;
		target_max = current_uV;

		if (current_uV < rdev->constraints->min_uV) {
			target_min = rdev->constraints->min_uV;
			target_max = rdev->constraints->min_uV;
		}

		if (current_uV > rdev->constraints->max_uV) {
			target_min = rdev->constraints->max_uV;
			target_max = rdev->constraints->max_uV;
		}

		if (target_min != current_uV || target_max != current_uV) {
			FUNC3(rdev, "Bringing %duV into %d-%duV\n",
				  current_uV, target_min, target_max);
			ret = FUNC0(
				rdev, target_min, target_max);
			if (ret < 0) {
				FUNC2(rdev,
					"failed to apply %d-%duV constraint(%d)\n",
					target_min, target_max, ret);
				return ret;
			}
		}
	}

	/* constrain machine-level voltage specs to fit
	 * the actual range supported by this regulator.
	 */
	if (ops->list_voltage && rdev->desc->n_voltages) {
		int	count = rdev->desc->n_voltages;
		int	i;
		int	min_uV = INT_MAX;
		int	max_uV = INT_MIN;
		int	cmin = constraints->min_uV;
		int	cmax = constraints->max_uV;

		/* it's safe to autoconfigure fixed-voltage supplies
		   and the constraints are used by list_voltage. */
		if (count == 1 && !cmin) {
			cmin = 1;
			cmax = INT_MAX;
			constraints->min_uV = cmin;
			constraints->max_uV = cmax;
		}

		/* voltage constraints are optional */
		if ((cmin == 0) && (cmax == 0))
			return 0;

		/* else require explicit machine-level constraints */
		if (cmin <= 0 || cmax <= 0 || cmax < cmin) {
			FUNC2(rdev, "invalid voltage constraints\n");
			return -EINVAL;
		}

		/* initial: [cmin..cmax] valid, [min_uV..max_uV] not */
		for (i = 0; i < count; i++) {
			int	value;

			value = ops->list_voltage(rdev, i);
			if (value <= 0)
				continue;

			/* maybe adjust [min_uV..max_uV] */
			if (value >= cmin && value < min_uV)
				min_uV = value;
			if (value <= cmax && value > max_uV)
				max_uV = value;
		}

		/* final: [min_uV..max_uV] valid iff constraints valid */
		if (max_uV < min_uV) {
			FUNC2(rdev,
				 "unsupportable voltage constraints %u-%uuV\n",
				 min_uV, max_uV);
			return -EINVAL;
		}

		/* use regulator's subset of machine constraints */
		if (constraints->min_uV < min_uV) {
			FUNC1(rdev, "override min_uV, %d -> %d\n",
				 constraints->min_uV, min_uV);
			constraints->min_uV = min_uV;
		}
		if (constraints->max_uV > max_uV) {
			FUNC1(rdev, "override max_uV, %d -> %d\n",
				 constraints->max_uV, max_uV);
			constraints->max_uV = max_uV;
		}
	}

	return 0;
}