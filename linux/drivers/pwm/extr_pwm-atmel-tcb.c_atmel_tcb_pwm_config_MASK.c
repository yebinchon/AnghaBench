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
typedef  int u64 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct atmel_tcb_pwm_device {scalar_t__ duty; scalar_t__ period; int div; } ;
struct atmel_tcb_pwm_chip {struct atmel_tcb_pwm_device** pwms; struct atmel_tc* tc; } ;
struct atmel_tc {TYPE_1__* tcb_config; int /*<<< orphan*/  slow_clk; int /*<<< orphan*/ * clk; } ;
struct TYPE_2__ {unsigned long long counter_width; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int NSEC_PER_SEC ; 
 int* atmel_tc_divisors ; 
 int /*<<< orphan*/  FUNC0 (struct pwm_chip*,struct pwm_device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int,unsigned long long) ; 
 struct atmel_tcb_pwm_device* FUNC4 (struct pwm_device*) ; 
 scalar_t__ FUNC5 (struct pwm_device*) ; 
 struct atmel_tcb_pwm_chip* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm,
				int duty_ns, int period_ns)
{
	struct atmel_tcb_pwm_chip *tcbpwmc = FUNC6(chip);
	struct atmel_tcb_pwm_device *tcbpwm = FUNC4(pwm);
	unsigned group = pwm->hwpwm / 2;
	unsigned index = pwm->hwpwm % 2;
	struct atmel_tcb_pwm_device *atcbpwm = NULL;
	struct atmel_tc *tc = tcbpwmc->tc;
	int i;
	int slowclk = 0;
	unsigned period;
	unsigned duty;
	unsigned rate = FUNC1(tc->clk[group]);
	unsigned long long min;
	unsigned long long max;

	/*
	 * Find best clk divisor:
	 * the smallest divisor which can fulfill the period_ns requirements.
	 */
	for (i = 0; i < 5; ++i) {
		if (atmel_tc_divisors[i] == 0) {
			slowclk = i;
			continue;
		}
		min = FUNC3((u64)NSEC_PER_SEC * atmel_tc_divisors[i], rate);
		max = min << tc->tcb_config->counter_width;
		if (max >= period_ns)
			break;
	}

	/*
	 * If none of the divisor are small enough to represent period_ns
	 * take slow clock (32KHz).
	 */
	if (i == 5) {
		i = slowclk;
		rate = FUNC1(tc->slow_clk);
		min = FUNC3(NSEC_PER_SEC, rate);
		max = min << tc->tcb_config->counter_width;

		/* If period is too big return ERANGE error */
		if (max < period_ns)
			return -ERANGE;
	}

	duty = FUNC3(duty_ns, min);
	period = FUNC3(period_ns, min);

	if (index == 0)
		atcbpwm = tcbpwmc->pwms[pwm->hwpwm + 1];
	else
		atcbpwm = tcbpwmc->pwms[pwm->hwpwm - 1];

	/*
	 * PWM devices provided by TCB driver are grouped by 2:
	 * - group 0: PWM 0 & 1
	 * - group 1: PWM 2 & 3
	 * - group 2: PWM 4 & 5
	 *
	 * PWM devices in a given group must be configured with the
	 * same period_ns.
	 *
	 * We're checking the period value of the second PWM device
	 * in this group before applying the new config.
	 */
	if ((atcbpwm && atcbpwm->duty > 0 &&
			atcbpwm->duty != atcbpwm->period) &&
		(atcbpwm->div != i || atcbpwm->period != period)) {
		FUNC2(chip->dev,
			"failed to configure period_ns: PWM group already configured with a different value\n");
		return -EINVAL;
	}

	tcbpwm->period = period;
	tcbpwm->div = i;
	tcbpwm->duty = duty;

	/* If the PWM is enabled, call enable to apply the new conf */
	if (FUNC5(pwm))
		FUNC0(chip, pwm);

	return 0;
}