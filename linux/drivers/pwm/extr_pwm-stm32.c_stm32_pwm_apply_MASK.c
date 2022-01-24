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
struct stm32_pwm {int dummy; } ;
struct pwm_state {scalar_t__ enabled; int /*<<< orphan*/  period; int /*<<< orphan*/  duty_cycle; int /*<<< orphan*/  polarity; } ;
struct TYPE_2__ {int enabled; int /*<<< orphan*/  polarity; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; TYPE_1__ state; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct stm32_pwm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_pwm*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stm32_pwm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_pwm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_pwm* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm,
			   const struct pwm_state *state)
{
	bool enabled;
	struct stm32_pwm *priv = FUNC4(chip);
	int ret;

	enabled = pwm->state.enabled;

	if (enabled && !state->enabled) {
		FUNC1(priv, pwm->hwpwm);
		return 0;
	}

	if (state->polarity != pwm->state.polarity)
		FUNC3(priv, pwm->hwpwm, state->polarity);

	ret = FUNC0(priv, pwm->hwpwm,
			       state->duty_cycle, state->period);
	if (ret)
		return ret;

	if (!enabled && state->enabled)
		ret = FUNC2(priv, pwm->hwpwm);

	return ret;
}