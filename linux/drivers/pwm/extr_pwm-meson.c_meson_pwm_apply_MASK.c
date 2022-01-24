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
struct pwm_state {scalar_t__ polarity; int /*<<< orphan*/  enabled; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct meson_pwm_channel {scalar_t__ lo; int /*<<< orphan*/  hi; scalar_t__ pre_div; } ;
struct meson_pwm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PWM_POLARITY_INVERSED ; 
 int FUNC0 (struct meson_pwm*,struct pwm_device*,struct pwm_state const*) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_pwm*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_pwm*,struct pwm_device*) ; 
 struct meson_pwm_channel* FUNC3 (struct pwm_device*) ; 
 struct meson_pwm* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm,
			   const struct pwm_state *state)
{
	struct meson_pwm_channel *channel = FUNC3(pwm);
	struct meson_pwm *meson = FUNC4(chip);
	int err = 0;

	if (!state)
		return -EINVAL;

	if (!state->enabled) {
		if (state->polarity == PWM_POLARITY_INVERSED) {
			/*
			 * This IP block revision doesn't have an "always high"
			 * setting which we can use for "inverted disabled".
			 * Instead we achieve this using the same settings
			 * that we use a pre_div of 0 (to get the shortest
			 * possible duration for one "count") and
			 * "period == duty_cycle". This results in a signal
			 * which is LOW for one "count", while being HIGH for
			 * the rest of the (so the signal is HIGH for slightly
			 * less than 100% of the period, but this is the best
			 * we can achieve).
			 */
			channel->pre_div = 0;
			channel->hi = ~0;
			channel->lo = 0;

			FUNC2(meson, pwm);
		} else {
			FUNC1(meson, pwm);
		}
	} else {
		err = FUNC0(meson, pwm, state);
		if (err < 0)
			return err;

		FUNC2(meson, pwm);
	}

	return 0;
}