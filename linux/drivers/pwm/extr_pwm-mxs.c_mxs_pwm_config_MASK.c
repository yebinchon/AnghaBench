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
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct mxs_pwm_chip {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int PERIOD_ACTIVE_HIGH ; 
 unsigned int FUNC0 (int) ; 
 int PERIOD_CDIV_MAX ; 
 unsigned int PERIOD_INACTIVE_LOW ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned long long PERIOD_PERIOD_MAX ; 
 scalar_t__ PWM_ACTIVE0 ; 
 scalar_t__ PWM_PERIOD0 ; 
 unsigned long* cdiv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pwm_device*) ; 
 struct mxs_pwm_chip* FUNC7 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct pwm_chip *chip, struct pwm_device *pwm,
			  int duty_ns, int period_ns)
{
	struct mxs_pwm_chip *mxs = FUNC7(chip);
	int ret, div = 0;
	unsigned int period_cycles, duty_cycles;
	unsigned long rate;
	unsigned long long c;

	rate = FUNC3(mxs->clk);
	while (1) {
		c = rate / cdiv[div];
		c = c * period_ns;
		FUNC5(c, 1000000000);
		if (c < PERIOD_PERIOD_MAX)
			break;
		div++;
		if (div >= PERIOD_CDIV_MAX)
			return -EINVAL;
	}

	period_cycles = c;
	c *= duty_ns;
	FUNC5(c, period_ns);
	duty_cycles = c;

	/*
	 * If the PWM channel is disabled, make sure to turn on the clock
	 * before writing the register. Otherwise, keep it enabled.
	 */
	if (!FUNC6(pwm)) {
		ret = FUNC4(mxs->clk);
		if (ret)
			return ret;
	}

	FUNC8(duty_cycles << 16,
			mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
	FUNC8(FUNC1(period_cycles) | PERIOD_ACTIVE_HIGH |
	       PERIOD_INACTIVE_LOW | FUNC0(div),
			mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);

	/*
	 * If the PWM is not enabled, turn the clock off again to save power.
	 */
	if (!FUNC6(pwm))
		FUNC2(mxs->clk);

	return 0;
}