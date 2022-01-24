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
typedef  int u64 ;
typedef  unsigned int u32 ;
struct pwm_device {unsigned int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct brcmstb_pwm {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned long CONST_VAR_F_MAX ; 
 unsigned long CONST_VAR_F_MIN ; 
 unsigned int CTRL2_OUT_SELECT ; 
 unsigned int CTRL_CHAN_OFFS ; 
 int CWORD_BIT_SIZE ; 
 int EINVAL ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  PWM_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned long PWM_ON_MIN ; 
 int PWM_ON_PERIOD_MAX ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned long PWM_PERIOD_MIN ; 
 unsigned int FUNC4 (struct brcmstb_pwm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmstb_pwm*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct brcmstb_pwm* FUNC10 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC11(struct pwm_chip *chip, struct pwm_device *pwm,
			      int duty_ns, int period_ns)
{
	struct brcmstb_pwm *p = FUNC10(chip);
	unsigned long pc, dc, cword = CONST_VAR_F_MAX;
	unsigned int channel = pwm->hwpwm;
	u32 value;

	/*
	 * If asking for a duty_ns equal to period_ns, we need to substract
	 * the period value by 1 to make it shorter than the "on" time and
	 * produce a flat 100% duty cycle signal, and max out the "on" time
	 */
	if (duty_ns == period_ns) {
		dc = PWM_ON_PERIOD_MAX;
		pc = PWM_ON_PERIOD_MAX - 1;
		goto done;
	}

	while (1) {
		u64 rate, tmp;

		/*
		 * Calculate the base rate from base frequency and current
		 * cword
		 */
		rate = (u64)FUNC6(p->clk) * (u64)cword;
		FUNC7(rate, 1 << CWORD_BIT_SIZE);

		tmp = period_ns * rate;
		FUNC7(tmp, NSEC_PER_SEC);
		pc = tmp;

		tmp = (duty_ns + 1) * rate;
		FUNC7(tmp, NSEC_PER_SEC);
		dc = tmp;

		/*
		 * We can be called with separate duty and period updates,
		 * so do not reject dc == 0 right away
		 */
		if (pc == PWM_PERIOD_MIN || (dc < PWM_ON_MIN && duty_ns))
			return -EINVAL;

		/* We converged on a calculation */
		if (pc <= PWM_ON_PERIOD_MAX && dc <= PWM_ON_PERIOD_MAX)
			break;

		/*
		 * The cword needs to be a power of 2 for the variable
		 * frequency generator to output a 50% duty cycle variable
		 * frequency which is used as input clock to the fixed
		 * frequency generator.
		 */
		cword >>= 1;

		/*
		 * Desired periods are too large, we do not have a divider
		 * for them
		 */
		if (cword < CONST_VAR_F_MIN)
			return -EINVAL;
	}

done:
	/*
	 * Configure the defined "cword" value to have the variable frequency
	 * generator output a base frequency for the constant frequency
	 * generator to derive from.
	 */
	FUNC8(&p->lock);
	FUNC5(p, cword >> 8, FUNC1(channel));
	FUNC5(p, cword & 0xff, FUNC0(channel));

	/* Select constant frequency signal output */
	value = FUNC4(p, PWM_CTRL2);
	value |= CTRL2_OUT_SELECT << (channel * CTRL_CHAN_OFFS);
	FUNC5(p, value, PWM_CTRL2);

	/* Configure on and period value */
	FUNC5(p, pc, FUNC3(channel));
	FUNC5(p, dc, FUNC2(channel));
	FUNC9(&p->lock);

	return 0;
}