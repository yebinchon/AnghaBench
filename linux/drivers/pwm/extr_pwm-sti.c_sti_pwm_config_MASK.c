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
struct sti_pwm_compat_data {int max_pwm_cnt; } ;
struct sti_pwm_chip {int /*<<< orphan*/  cpt_clk; int /*<<< orphan*/  pwm_clk; struct pwm_device* cur; int /*<<< orphan*/  configured; int /*<<< orphan*/  pwm_cpt_int_en; int /*<<< orphan*/  regmap; int /*<<< orphan*/  prescale_high; int /*<<< orphan*/  prescale_low; struct device* dev; struct sti_pwm_compat_data* cdata; } ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int PWM_PRESCALE_HIGH_MASK ; 
 unsigned int PWM_PRESCALE_LOW_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,int,int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pwm_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sti_pwm_chip*,int,unsigned int*) ; 
 struct sti_pwm_chip* FUNC10 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC11(struct pwm_chip *chip, struct pwm_device *pwm,
			  int duty_ns, int period_ns)
{
	struct sti_pwm_chip *pc = FUNC10(chip);
	struct sti_pwm_compat_data *cdata = pc->cdata;
	unsigned int ncfg, value, prescale = 0;
	struct pwm_device *cur = pc->cur;
	struct device *dev = pc->dev;
	bool period_same = false;
	int ret;

	ncfg = FUNC4(pc->configured);
	if (ncfg)
		period_same = (period_ns == FUNC5(cur));

	/*
	 * Allow configuration changes if one of the following conditions
	 * satisfy.
	 * 1. No devices have been configured.
	 * 2. Only one device has been configured and the new request is for
	 *    the same device.
	 * 3. Only one device has been configured and the new request is for
	 *    a new device and period of the new device is same as the current
	 *    configured period.
	 * 4. More than one devices are configured and period of the new
	 *    requestis the same as the current period.
	 */
	if (!ncfg ||
	    ((ncfg == 1) && (pwm->hwpwm == cur->hwpwm)) ||
	    ((ncfg == 1) && (pwm->hwpwm != cur->hwpwm) && period_same) ||
	    ((ncfg > 1) && period_same)) {
		/* Enable clock before writing to PWM registers. */
		ret = FUNC2(pc->pwm_clk);
		if (ret)
			return ret;

		ret = FUNC2(pc->cpt_clk);
		if (ret)
			return ret;

		if (!period_same) {
			ret = FUNC9(pc, period_ns, &prescale);
			if (ret)
				goto clk_dis;

			value = prescale & PWM_PRESCALE_LOW_MASK;

			ret = FUNC6(pc->prescale_low, value);
			if (ret)
				goto clk_dis;

			value = (prescale & PWM_PRESCALE_HIGH_MASK) >> 4;

			ret = FUNC6(pc->prescale_high, value);
			if (ret)
				goto clk_dis;
		}

		/*
		 * When PWMVal == 0, PWM pulse = 1 local clock cycle.
		 * When PWMVal == max_pwm_count,
		 * PWM pulse = (max_pwm_count + 1) local cycles,
		 * that is continuous pulse: signal never goes low.
		 */
		value = cdata->max_pwm_cnt * duty_ns / period_ns;

		ret = FUNC7(pc->regmap, FUNC0(pwm->hwpwm), value);
		if (ret)
			goto clk_dis;

		ret = FUNC6(pc->pwm_cpt_int_en, 0);

		FUNC8(pwm->hwpwm, &pc->configured);
		pc->cur = pwm;

		FUNC3(dev, "prescale:%u, period:%i, duty:%i, value:%u\n",
			prescale, period_ns, duty_ns, value);
	} else {
		return -EINVAL;
	}

clk_dis:
	FUNC1(pc->pwm_clk);
	FUNC1(pc->cpt_clk);
	return ret;
}