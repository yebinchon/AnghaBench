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
struct regulator_dev {int /*<<< orphan*/  dev; } ;
struct pwm_state {int dummy; } ;
struct pwm_regulator_data {unsigned int state; int /*<<< orphan*/  pwm; TYPE_1__* duty_cycle_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  dutycycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_state*,int /*<<< orphan*/ ,int) ; 
 struct pwm_regulator_data* FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev,
					 unsigned selector)
{
	struct pwm_regulator_data *drvdata = FUNC4(rdev);
	struct pwm_state pstate;
	int ret;

	FUNC2(drvdata->pwm, &pstate);
	FUNC3(&pstate,
			drvdata->duty_cycle_table[selector].dutycycle, 100);

	ret = FUNC1(drvdata->pwm, &pstate);
	if (ret) {
		FUNC0(&rdev->dev, "Failed to configure PWM: %d\n", ret);
		return ret;
	}

	drvdata->state = selector;

	return 0;
}