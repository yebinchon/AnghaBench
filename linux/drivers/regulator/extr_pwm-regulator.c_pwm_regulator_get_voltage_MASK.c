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
typedef  int u64 ;
struct regulator_dev {TYPE_2__* constraints; } ;
struct pwm_state {int dummy; } ;
struct TYPE_3__ {unsigned int min_uV_dutycycle; unsigned int max_uV_dutycycle; unsigned int dutycycle_unit; } ;
struct pwm_regulator_data {int /*<<< orphan*/  pwm; TYPE_1__ continuous; } ;
struct TYPE_4__ {int min_uV; int max_uV; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (struct pwm_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 struct pwm_regulator_data* FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct pwm_regulator_data *drvdata = FUNC3(rdev);
	unsigned int min_uV_duty = drvdata->continuous.min_uV_dutycycle;
	unsigned int max_uV_duty = drvdata->continuous.max_uV_dutycycle;
	unsigned int duty_unit = drvdata->continuous.dutycycle_unit;
	int min_uV = rdev->constraints->min_uV;
	int max_uV = rdev->constraints->max_uV;
	int diff_uV = max_uV - min_uV;
	struct pwm_state pstate;
	unsigned int diff_duty;
	unsigned int voltage;

	FUNC2(drvdata->pwm, &pstate);

	voltage = FUNC1(&pstate, duty_unit);

	/*
	 * The dutycycle for min_uV might be greater than the one for max_uV.
	 * This is happening when the user needs an inversed polarity, but the
	 * PWM device does not support inversing it in hardware.
	 */
	if (max_uV_duty < min_uV_duty) {
		voltage = min_uV_duty - voltage;
		diff_duty = min_uV_duty - max_uV_duty;
	} else {
		voltage = voltage - min_uV_duty;
		diff_duty = max_uV_duty - min_uV_duty;
	}

	voltage = FUNC0((u64)voltage * diff_uV, diff_duty);

	return voltage + min_uV;
}