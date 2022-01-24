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
typedef  unsigned long u32 ;
struct tegra_pwm_chip {int clk_rate; int /*<<< orphan*/  clk; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long long,unsigned long long) ; 
 int EINVAL ; 
 unsigned long long NSEC_PER_SEC ; 
 unsigned long PWM_DUTY_SHIFT ; 
 int PWM_DUTY_WIDTH ; 
 unsigned long PWM_ENABLE ; 
 unsigned long PWM_SCALE_SHIFT ; 
 unsigned long PWM_SCALE_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_pwm_chip*,int /*<<< orphan*/ ,unsigned long) ; 
 struct tegra_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC6(struct pwm_chip *chip, struct pwm_device *pwm,
			    int duty_ns, int period_ns)
{
	struct tegra_pwm_chip *pc = FUNC5(chip);
	unsigned long long c = duty_ns, hz;
	unsigned long rate;
	u32 val = 0;
	int err;

	/*
	 * Convert from duty_ns / period_ns to a fixed number of duty ticks
	 * per (1 << PWM_DUTY_WIDTH) cycles and make sure to round to the
	 * nearest integer during division.
	 */
	c *= (1 << PWM_DUTY_WIDTH);
	c = FUNC0(c, period_ns);

	val = (u32)c << PWM_DUTY_SHIFT;

	/*
	 * Compute the prescaler value for which (1 << PWM_DUTY_WIDTH)
	 * cycles at the PWM clock rate will take period_ns nanoseconds.
	 */
	rate = pc->clk_rate >> PWM_DUTY_WIDTH;

	/* Consider precision in PWM_SCALE_WIDTH rate calculation */
	hz = FUNC0(100ULL * NSEC_PER_SEC, period_ns);
	rate = FUNC0(100ULL * rate, hz);

	/*
	 * Since the actual PWM divider is the register's frequency divider
	 * field minus 1, we need to decrement to get the correct value to
	 * write to the register.
	 */
	if (rate > 0)
		rate--;

	/*
	 * Make sure that the rate will fit in the register's frequency
	 * divider field.
	 */
	if (rate >> PWM_SCALE_WIDTH)
		return -EINVAL;

	val |= rate << PWM_SCALE_SHIFT;

	/*
	 * If the PWM channel is disabled, make sure to turn on the clock
	 * before writing the register. Otherwise, keep it enabled.
	 */
	if (!FUNC3(pwm)) {
		err = FUNC2(pc->clk);
		if (err < 0)
			return err;
	} else
		val |= PWM_ENABLE;

	FUNC4(pc, pwm->hwpwm, val);

	/*
	 * If the PWM is not enabled, turn the clock off again to save power.
	 */
	if (!FUNC3(pwm))
		FUNC1(pc->clk);

	return 0;
}