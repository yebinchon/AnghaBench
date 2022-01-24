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
struct pwm_state {scalar_t__ enabled; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; struct pwm_state state; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {size_t clk_select; } ;
struct fsl_pwm_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; TYPE_1__ period; int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FSL_PWM_CLK_CNTEN ; 
 int /*<<< orphan*/  FTM_OUTMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_pwm_chip*,struct pwm_device*,struct pwm_state const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_pwm_chip* FUNC7 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC8(struct pwm_chip *chip, struct pwm_device *pwm,
			 const struct pwm_state *newstate)
{
	struct fsl_pwm_chip *fpc = FUNC7(chip);
	struct pwm_state *oldstate = &pwm->state;
	int ret = 0;

	/*
	 * oldstate to newstate : action
	 *
	 * disabled to disabled : ignore
	 * enabled to disabled : disable
	 * enabled to enabled : update settings
	 * disabled to enabled : update settings + enable
	 */

	FUNC4(&fpc->lock);

	if (!newstate->enabled) {
		if (oldstate->enabled) {
			FUNC6(fpc->regmap, FTM_OUTMASK,
					   FUNC0(pwm->hwpwm), FUNC0(pwm->hwpwm));
			FUNC1(fpc->clk[FSL_PWM_CLK_CNTEN]);
			FUNC1(fpc->clk[fpc->period.clk_select]);
		}

		goto end_mutex;
	}

	ret = FUNC3(fpc, pwm, newstate);
	if (ret)
		goto end_mutex;

	/* check if need to enable */
	if (!oldstate->enabled) {
		ret = FUNC2(fpc->clk[fpc->period.clk_select]);
		if (ret)
			goto end_mutex;

		ret = FUNC2(fpc->clk[FSL_PWM_CLK_CNTEN]);
		if (ret) {
			FUNC1(fpc->clk[fpc->period.clk_select]);
			goto end_mutex;
		}

		FUNC6(fpc->regmap, FTM_OUTMASK, FUNC0(pwm->hwpwm),
				   0);
	}

end_mutex:
	FUNC5(&fpc->lock);
	return ret;
}