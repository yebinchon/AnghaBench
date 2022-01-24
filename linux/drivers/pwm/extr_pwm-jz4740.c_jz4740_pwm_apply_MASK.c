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
typedef  int uint16_t ;
struct pwm_state {unsigned long long period; unsigned long long duty_cycle; int polarity; scalar_t__ enabled; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; int /*<<< orphan*/  chip; } ;
struct pwm_chip {int dummy; } ;
struct jz4740_pwm_chip {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int JZ_TIMER_CTRL_PWM_ABBRUPT_SHUTDOWN ; 
 int JZ_TIMER_CTRL_PWM_ACTIVE_LOW ; 
 int JZ_TIMER_CTRL_SRC_EXT ; 
#define  PWM_POLARITY_INVERSED 129 
#define  PWM_POLARITY_NORMAL 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 struct jz4740_pwm_chip* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pwm_chip *chip, struct pwm_device *pwm,
			    const struct pwm_state *state)
{
	struct jz4740_pwm_chip *jz4740 = FUNC9(pwm->chip);
	unsigned long long tmp;
	unsigned long period, duty;
	unsigned int prescaler = 0;
	uint16_t ctrl;

	tmp = (unsigned long long)FUNC1(jz4740->clk) * state->period;
	FUNC2(tmp, 1000000000);
	period = tmp;

	while (period > 0xffff && prescaler < 6) {
		period >>= 2;
		++prescaler;
	}

	if (prescaler == 6)
		return -EINVAL;

	tmp = (unsigned long long)period * state->duty_cycle;
	FUNC2(tmp, state->period);
	duty = period - tmp;

	if (duty >= period)
		duty = period - 1;

	FUNC3(chip, pwm);

	FUNC5(pwm->hwpwm, 0);
	FUNC7(pwm->hwpwm, duty);
	FUNC8(pwm->hwpwm, period);

	ctrl = FUNC0(prescaler) | JZ_TIMER_CTRL_SRC_EXT |
		JZ_TIMER_CTRL_PWM_ABBRUPT_SHUTDOWN;

	FUNC6(pwm->hwpwm, ctrl);

	switch (state->polarity) {
	case PWM_POLARITY_NORMAL:
		ctrl &= ~JZ_TIMER_CTRL_PWM_ACTIVE_LOW;
		break;
	case PWM_POLARITY_INVERSED:
		ctrl |= JZ_TIMER_CTRL_PWM_ACTIVE_LOW;
		break;
	}

	FUNC6(pwm->hwpwm, ctrl);

	if (state->enabled)
		FUNC4(chip, pwm);

	return 0;
}