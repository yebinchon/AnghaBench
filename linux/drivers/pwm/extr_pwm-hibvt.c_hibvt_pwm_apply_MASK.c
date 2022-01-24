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
struct pwm_state {scalar_t__ polarity; scalar_t__ period; scalar_t__ duty_cycle; scalar_t__ enabled; } ;
struct TYPE_4__ {scalar_t__ polarity; scalar_t__ period; scalar_t__ duty_cycle; scalar_t__ enabled; } ;
struct pwm_device {TYPE_2__ state; } ;
struct pwm_chip {int dummy; } ;
struct hibvt_pwm_chip {TYPE_1__* soc; } ;
struct TYPE_3__ {scalar_t__ quirk_force_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pwm_chip*,struct pwm_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_chip*,struct pwm_device*,scalar_t__) ; 
 struct hibvt_pwm_chip* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm,
			   const struct pwm_state *state)
{
	struct hibvt_pwm_chip *hi_pwm_chip = FUNC4(chip);

	if (state->polarity != pwm->state.polarity)
		FUNC3(chip, pwm, state->polarity);

	if (state->period != pwm->state.period ||
	    state->duty_cycle != pwm->state.duty_cycle) {
		FUNC0(chip, pwm, state->duty_cycle, state->period);

		/*
		 * Some implementations require the PWM to be enabled twice
		 * each time the duty cycle is refreshed.
		 */
		if (hi_pwm_chip->soc->quirk_force_enable && state->enabled)
			FUNC2(chip, pwm);
	}

	if (state->enabled != pwm->state.enabled) {
		if (state->enabled)
			FUNC2(chip, pwm);
		else
			FUNC1(chip, pwm);
	}

	return 0;
}