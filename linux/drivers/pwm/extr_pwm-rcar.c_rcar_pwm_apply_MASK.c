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
struct rcar_pwm_chip {int dummy; } ;
struct pwm_state {scalar_t__ polarity; int /*<<< orphan*/  period; int /*<<< orphan*/  duty_cycle; int /*<<< orphan*/  enabled; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  RCAR_PWMCR ; 
 int /*<<< orphan*/  RCAR_PWMCR_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct pwm_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_pwm_chip*) ; 
 int FUNC2 (struct rcar_pwm_chip*) ; 
 int FUNC3 (struct rcar_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_pwm_chip*,int) ; 
 int FUNC5 (struct rcar_pwm_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rcar_pwm_chip* FUNC7 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC8(struct pwm_chip *chip, struct pwm_device *pwm,
			  const struct pwm_state *state)
{
	struct rcar_pwm_chip *rp = FUNC7(chip);
	struct pwm_state cur_state;
	int div, ret;

	/* This HW/driver only supports normal polarity */
	FUNC0(pwm, &cur_state);
	if (state->polarity != PWM_POLARITY_NORMAL)
		return -ENOTSUPP;

	if (!state->enabled) {
		FUNC1(rp);
		return 0;
	}

	div = FUNC3(rp, state->period);
	if (div < 0)
		return div;

	FUNC6(rp, RCAR_PWMCR_SYNC, RCAR_PWMCR_SYNC, RCAR_PWMCR);

	ret = FUNC5(rp, div, state->duty_cycle, state->period);
	if (!ret)
		FUNC4(rp, div);

	/* The SYNC should be set to 0 even if rcar_pwm_set_counter failed */
	FUNC6(rp, RCAR_PWMCR_SYNC, 0, RCAR_PWMCR);

	if (!ret)
		ret = FUNC2(rp);

	return ret;
}