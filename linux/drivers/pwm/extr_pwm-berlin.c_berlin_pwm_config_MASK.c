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
typedef  int u32 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct berlin_pwm_chip {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BERLIN_PWM_CONTROL ; 
 int /*<<< orphan*/  BERLIN_PWM_DUTY ; 
 int BERLIN_PWM_MAX_TCNT ; 
 int BERLIN_PWM_PRESCALE_4096 ; 
 int /*<<< orphan*/  BERLIN_PWM_TCNT ; 
 int ERANGE ; 
 int NSEC_PER_SEC ; 
 int FUNC0 (struct berlin_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct berlin_pwm_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct berlin_pwm_chip* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip, struct pwm_device *pwm_dev,
			     int duty_ns, int period_ns)
{
	struct berlin_pwm_chip *pwm = FUNC4(chip);
	bool prescale_4096 = false;
	u32 value, duty, period;
	u64 cycles;

	cycles = FUNC2(pwm->clk);
	cycles *= period_ns;
	FUNC3(cycles, NSEC_PER_SEC);

	if (cycles > BERLIN_PWM_MAX_TCNT) {
		prescale_4096 = true;
		cycles >>= 12; // Prescaled by 4096

		if (cycles > BERLIN_PWM_MAX_TCNT)
			return -ERANGE;
	}

	period = cycles;
	cycles *= duty_ns;
	FUNC3(cycles, period_ns);
	duty = cycles;

	value = FUNC0(pwm, pwm_dev->hwpwm, BERLIN_PWM_CONTROL);
	if (prescale_4096)
		value |= BERLIN_PWM_PRESCALE_4096;
	else
		value &= ~BERLIN_PWM_PRESCALE_4096;
	FUNC1(pwm, pwm_dev->hwpwm, value, BERLIN_PWM_CONTROL);

	FUNC1(pwm, pwm_dev->hwpwm, duty, BERLIN_PWM_DUTY);
	FUNC1(pwm, pwm_dev->hwpwm, period, BERLIN_PWM_TCNT);

	return 0;
}