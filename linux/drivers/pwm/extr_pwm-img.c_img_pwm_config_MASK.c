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
typedef  int u32 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct img_pwm_chip {int min_period_ns; int max_period_ns; int /*<<< orphan*/  pwm_clk; TYPE_1__* data; } ;
struct TYPE_2__ {unsigned int max_timebase; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int EINVAL ; 
 int ERANGE ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PWM_CH_CFG_DUTY_SHIFT ; 
 int PWM_CH_CFG_TMBASE_SHIFT ; 
 int /*<<< orphan*/  PWM_CTRL_CFG ; 
 int PWM_CTRL_CFG_DIV_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PWM_CTRL_CFG_NO_SUB_DIV ; 
 int PWM_CTRL_CFG_SUB_DIV0 ; 
 int PWM_CTRL_CFG_SUB_DIV0_DIV1 ; 
 int PWM_CTRL_CFG_SUB_DIV1 ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct img_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct img_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct img_pwm_chip* FUNC10 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC11(struct pwm_chip *chip, struct pwm_device *pwm,
			  int duty_ns, int period_ns)
{
	u32 val, div, duty, timebase;
	unsigned long mul, output_clk_hz, input_clk_hz;
	struct img_pwm_chip *pwm_chip = FUNC10(chip);
	unsigned int max_timebase = pwm_chip->data->max_timebase;
	int ret;

	if (period_ns < pwm_chip->min_period_ns ||
	    period_ns > pwm_chip->max_period_ns) {
		FUNC4(chip->dev, "configured period not in range\n");
		return -ERANGE;
	}

	input_clk_hz = FUNC3(pwm_chip->pwm_clk);
	output_clk_hz = FUNC0(NSEC_PER_SEC, period_ns);

	mul = FUNC0(input_clk_hz, output_clk_hz);
	if (mul <= max_timebase) {
		div = PWM_CTRL_CFG_NO_SUB_DIV;
		timebase = FUNC0(mul, 1);
	} else if (mul <= max_timebase * 8) {
		div = PWM_CTRL_CFG_SUB_DIV0;
		timebase = FUNC0(mul, 8);
	} else if (mul <= max_timebase * 64) {
		div = PWM_CTRL_CFG_SUB_DIV1;
		timebase = FUNC0(mul, 64);
	} else if (mul <= max_timebase * 512) {
		div = PWM_CTRL_CFG_SUB_DIV0_DIV1;
		timebase = FUNC0(mul, 512);
	} else {
		FUNC4(chip->dev,
			"failed to configure timebase steps/divider value\n");
		return -EINVAL;
	}

	duty = FUNC0(timebase * duty_ns, period_ns);

	ret = FUNC7(chip->dev);
	if (ret < 0)
		return ret;

	val = FUNC5(pwm_chip, PWM_CTRL_CFG);
	val &= ~(PWM_CTRL_CFG_DIV_MASK << FUNC2(pwm->hwpwm));
	val |= (div & PWM_CTRL_CFG_DIV_MASK) <<
		FUNC2(pwm->hwpwm);
	FUNC6(pwm_chip, PWM_CTRL_CFG, val);

	val = (duty << PWM_CH_CFG_DUTY_SHIFT) |
	      (timebase << PWM_CH_CFG_TMBASE_SHIFT);
	FUNC6(pwm_chip, FUNC1(pwm->hwpwm), val);

	FUNC8(chip->dev);
	FUNC9(chip->dev);

	return 0;
}