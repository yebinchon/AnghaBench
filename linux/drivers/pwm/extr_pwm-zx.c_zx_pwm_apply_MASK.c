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
struct zx_pwm_chip {int /*<<< orphan*/  wclk; } ;
struct pwm_state {scalar_t__ polarity; scalar_t__ period; scalar_t__ duty_cycle; scalar_t__ enabled; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  ZX_PWM_EN ; 
 int /*<<< orphan*/  ZX_PWM_MODE ; 
 int /*<<< orphan*/  ZX_PWM_POLAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_device*,struct pwm_state*) ; 
 struct zx_pwm_chip* FUNC3 (struct pwm_chip*) ; 
 int FUNC4 (struct pwm_chip*,struct pwm_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct zx_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm,
			const struct pwm_state *state)
{
	struct zx_pwm_chip *zpc = FUNC3(chip);
	struct pwm_state cstate;
	int ret;

	FUNC2(pwm, &cstate);

	if (state->polarity != cstate.polarity)
		FUNC5(zpc, pwm->hwpwm, ZX_PWM_MODE, ZX_PWM_POLAR,
				(state->polarity == PWM_POLARITY_INVERSED) ?
				 0 : ZX_PWM_POLAR);

	if (state->period != cstate.period ||
	    state->duty_cycle != cstate.duty_cycle) {
		ret = FUNC4(chip, pwm, state->duty_cycle,
				    state->period);
		if (ret)
			return ret;
	}

	if (state->enabled != cstate.enabled) {
		if (state->enabled) {
			ret = FUNC1(zpc->wclk);
			if (ret)
				return ret;

			FUNC5(zpc, pwm->hwpwm, ZX_PWM_MODE,
					ZX_PWM_EN, ZX_PWM_EN);
		} else {
			FUNC5(zpc, pwm->hwpwm, ZX_PWM_MODE,
					ZX_PWM_EN, 0);
			FUNC0(zpc->wclk);
		}
	}

	return 0;
}