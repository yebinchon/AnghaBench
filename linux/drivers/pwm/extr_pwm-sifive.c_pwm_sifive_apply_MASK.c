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
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pwm_state {scalar_t__ polarity; int enabled; unsigned int duty_cycle; scalar_t__ period; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pwm_sifive_ddata {scalar_t__ approx_period; int user_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; scalar_t__ regs; TYPE_1__ chip; } ;
struct pwm_device {int hwpwm; struct pwm_state state; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long,scalar_t__) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ PWM_POLARITY_INVERSED ; 
 unsigned int PWM_SIFIVE_CMPWIDTH ; 
 scalar_t__ PWM_SIFIVE_PWMCMP0 ; 
 int PWM_SIFIVE_SIZE_PWMCMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pwm_sifive_ddata* FUNC8 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct pwm_chip*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pwm_sifive_ddata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct pwm_chip *chip, struct pwm_device *pwm,
			    const struct pwm_state *state)
{
	struct pwm_sifive_ddata *ddata = FUNC8(chip);
	struct pwm_state cur_state;
	unsigned int duty_cycle;
	unsigned long long num;
	bool enabled;
	int ret = 0;
	u32 frac;

	if (state->polarity != PWM_POLARITY_INVERSED)
		return -EINVAL;

	ret = FUNC2(ddata->clk);
	if (ret) {
		FUNC4(ddata->chip.dev, "Enable clk failed\n");
		return ret;
	}

	FUNC6(&ddata->lock);
	cur_state = pwm->state;
	enabled = cur_state.enabled;

	duty_cycle = state->duty_cycle;
	if (!state->enabled)
		duty_cycle = 0;

	/*
	 * The problem of output producing mixed setting as mentioned at top,
	 * occurs here. To minimize the window for this problem, we are
	 * calculating the register values first and then writing them
	 * consecutively
	 */
	num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
	frac = FUNC0(num, state->period);
	/* The hardware cannot generate a 100% duty cycle */
	frac = FUNC5(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);

	if (state->period != ddata->approx_period) {
		if (ddata->user_count != 1) {
			ret = -EBUSY;
			goto exit;
		}
		ddata->approx_period = state->period;
		FUNC10(ddata, FUNC3(ddata->clk));
	}

	FUNC11(frac, ddata->regs + PWM_SIFIVE_PWMCMP0 +
	       pwm->hwpwm * PWM_SIFIVE_SIZE_PWMCMP);

	if (state->enabled != enabled)
		FUNC9(chip, state->enabled);

exit:
	FUNC1(ddata->clk);
	FUNC7(&ddata->lock);
	return ret;
}