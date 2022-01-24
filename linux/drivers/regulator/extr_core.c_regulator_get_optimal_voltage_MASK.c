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
typedef  int /*<<< orphan*/  suspend_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct coupling_desc {struct regulator_dev** coupled_rdevs; } ;
struct regulator_dev {TYPE_1__ mutex; struct regulation_constraints* constraints; struct coupling_desc coupling_desc; } ;
struct regulation_constraints {int min_uV; int max_uV; int* max_spread; } ;

/* Variables and functions */
 int EINVAL ; 
 int INT_MAX ; 
 int /*<<< orphan*/  PM_SUSPEND_ON ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (struct regulator_dev*,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct regulator_dev*,int*,int*) ; 
 int FUNC6 (struct regulator_dev*) ; 
 int FUNC7 (struct regulator_dev*,int*,int*) ; 

__attribute__((used)) static int FUNC8(struct regulator_dev *rdev,
					 int *current_uV,
					 int *min_uV, int *max_uV,
					 suspend_state_t state,
					 int n_coupled)
{
	struct coupling_desc *c_desc = &rdev->coupling_desc;
	struct regulator_dev **c_rdevs = c_desc->coupled_rdevs;
	struct regulation_constraints *constraints = rdev->constraints;
	int desired_min_uV = 0, desired_max_uV = INT_MAX;
	int max_current_uV = 0, min_current_uV = INT_MAX;
	int highest_min_uV = 0, target_uV, possible_uV;
	int i, ret, max_spread;
	bool done;

	*current_uV = -1;

	/*
	 * If there are no coupled regulators, simply set the voltage
	 * demanded by consumers.
	 */
	if (n_coupled == 1) {
		/*
		 * If consumers don't provide any demands, set voltage
		 * to min_uV
		 */
		desired_min_uV = constraints->min_uV;
		desired_max_uV = constraints->max_uV;

		ret = FUNC4(rdev,
						&desired_min_uV,
						&desired_max_uV, state);
		if (ret < 0)
			return ret;

		possible_uV = desired_min_uV;
		done = true;

		goto finish;
	}

	/* Find highest min desired voltage */
	for (i = 0; i < n_coupled; i++) {
		int tmp_min = 0;
		int tmp_max = INT_MAX;

		FUNC1(&c_rdevs[i]->mutex.base);

		ret = FUNC4(c_rdevs[i],
						&tmp_min,
						&tmp_max, state);
		if (ret < 0)
			return ret;

		ret = FUNC5(c_rdevs[i], &tmp_min, &tmp_max);
		if (ret < 0)
			return ret;

		highest_min_uV = FUNC2(highest_min_uV, tmp_min);

		if (i == 0) {
			desired_min_uV = tmp_min;
			desired_max_uV = tmp_max;
		}
	}

	max_spread = constraints->max_spread[0];

	/*
	 * Let target_uV be equal to the desired one if possible.
	 * If not, set it to minimum voltage, allowed by other coupled
	 * regulators.
	 */
	target_uV = FUNC2(desired_min_uV, highest_min_uV - max_spread);

	/*
	 * Find min and max voltages, which currently aren't violating
	 * max_spread.
	 */
	for (i = 1; i < n_coupled; i++) {
		int tmp_act;

		if (!FUNC0(c_rdevs[i]))
			continue;

		tmp_act = FUNC6(c_rdevs[i]);
		if (tmp_act < 0)
			return tmp_act;

		min_current_uV = FUNC3(tmp_act, min_current_uV);
		max_current_uV = FUNC2(tmp_act, max_current_uV);
	}

	/* There aren't any other regulators enabled */
	if (max_current_uV == 0) {
		possible_uV = target_uV;
	} else {
		/*
		 * Correct target voltage, so as it currently isn't
		 * violating max_spread
		 */
		possible_uV = FUNC2(target_uV, max_current_uV - max_spread);
		possible_uV = FUNC3(possible_uV, min_current_uV + max_spread);
	}

	if (possible_uV > desired_max_uV)
		return -EINVAL;

	done = (possible_uV == target_uV);
	desired_min_uV = possible_uV;

finish:
	/* Apply max_uV_step constraint if necessary */
	if (state == PM_SUSPEND_ON) {
		ret = FUNC7(rdev, current_uV,
						   &desired_min_uV);
		if (ret < 0)
			return ret;

		if (ret == 0)
			done = false;
	}

	/* Set current_uV if wasn't done earlier in the code and if necessary */
	if (n_coupled > 1 && *current_uV == -1) {

		if (FUNC0(rdev)) {
			ret = FUNC6(rdev);
			if (ret < 0)
				return ret;

			*current_uV = ret;
		} else {
			*current_uV = desired_min_uV;
		}
	}

	*min_uV = desired_min_uV;
	*max_uV = desired_max_uV;

	return done;
}