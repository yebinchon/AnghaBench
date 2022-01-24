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
struct rockchip_pwm_chip {int /*<<< orphan*/  pclk; TYPE_1__* data; } ;
struct pwm_state {int enabled; scalar_t__ polarity; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  supports_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_device*,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_chip*,struct pwm_device*,struct pwm_state const*) ; 
 int FUNC4 (struct pwm_chip*,struct pwm_device*,int) ; 
 struct rockchip_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm,
			      const struct pwm_state *state)
{
	struct rockchip_pwm_chip *pc = FUNC5(chip);
	struct pwm_state curstate;
	bool enabled;
	int ret = 0;

	ret = FUNC1(pc->pclk);
	if (ret)
		return ret;

	FUNC2(pwm, &curstate);
	enabled = curstate.enabled;

	if (state->polarity != curstate.polarity && enabled &&
	    !pc->data->supports_lock) {
		ret = FUNC4(chip, pwm, false);
		if (ret)
			goto out;
		enabled = false;
	}

	FUNC3(chip, pwm, state);
	if (state->enabled != enabled) {
		ret = FUNC4(chip, pwm, state->enabled);
		if (ret)
			goto out;
	}

out:
	FUNC0(pc->pclk);

	return ret;
}