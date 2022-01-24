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
struct sti_pwm_compat_data {scalar_t__ cpt_num_devs; } ;
struct sti_pwm_chip {int /*<<< orphan*/  pwm_cpt_en; int /*<<< orphan*/  cpt_clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  pwm_cpt_int_en; struct device* dev; struct sti_pwm_compat_data* cdata; } ;
struct sti_cpt_ddata {int index; unsigned long long* snapshot; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct pwm_capture {unsigned long long period; unsigned long long duty_cycle; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CPT_EDGE_DISABLED ; 
 int /*<<< orphan*/  CPT_EDGE_RISING ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 unsigned long long NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sti_cpt_ddata* FUNC7 (struct pwm_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sti_pwm_chip* FUNC10 (struct pwm_chip*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pwm_chip *chip, struct pwm_device *pwm,
			   struct pwm_capture *result, unsigned long timeout)
{
	struct sti_pwm_chip *pc = FUNC10(chip);
	struct sti_pwm_compat_data *cdata = pc->cdata;
	struct sti_cpt_ddata *ddata = FUNC7(pwm);
	struct device *dev = pc->dev;
	unsigned int effective_ticks;
	unsigned long long high, low;
	int ret;

	if (pwm->hwpwm >= cdata->cpt_num_devs) {
		FUNC3(dev, "device %u is not valid\n", pwm->hwpwm);
		return -EINVAL;
	}

	FUNC5(&ddata->lock);
	ddata->index = 0;

	/* Prepare capture measurement */
	FUNC9(pc->regmap, FUNC1(pwm->hwpwm), CPT_EDGE_RISING);
	FUNC8(pc->pwm_cpt_int_en, FUNC0(pwm->hwpwm));

	/* Enable capture */
	ret = FUNC8(pc->pwm_cpt_en, 1);
	if (ret) {
		FUNC3(dev, "failed to enable PWM capture %u: %d\n",
			pwm->hwpwm, ret);
		goto out;
	}

	ret = FUNC11(ddata->wait, ddata->index > 1,
					       FUNC4(timeout));

	FUNC9(pc->regmap, FUNC1(pwm->hwpwm), CPT_EDGE_DISABLED);

	if (ret == -ERESTARTSYS)
		goto out;

	switch (ddata->index) {
	case 0:
	case 1:
		/*
		 * Getting here could mean:
		 *  - input signal is constant of less than 1 Hz
		 *  - there is no input signal at all
		 *
		 * In such case the frequency is rounded down to 0
		 */
		result->period = 0;
		result->duty_cycle = 0;

		break;

	case 2:
		/* We have everying we need */
		high = ddata->snapshot[1] - ddata->snapshot[0];
		low = ddata->snapshot[2] - ddata->snapshot[1];

		effective_ticks = FUNC2(pc->cpt_clk);

		result->period = (high + low) * NSEC_PER_SEC;
		result->period /= effective_ticks;

		result->duty_cycle = high * NSEC_PER_SEC;
		result->duty_cycle /= effective_ticks;

		break;

	default:
		FUNC3(dev, "internal error\n");
		break;
	}

out:
	/* Disable capture */
	FUNC8(pc->pwm_cpt_en, 0);

	FUNC6(&ddata->lock);
	return ret;
}