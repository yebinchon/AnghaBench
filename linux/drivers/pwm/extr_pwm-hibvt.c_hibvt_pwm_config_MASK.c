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
typedef  int u32 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct hibvt_pwm_chip {int /*<<< orphan*/  base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWM_DUTY_MASK ; 
 int /*<<< orphan*/  PWM_PERIOD_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hibvt_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip, struct pwm_device *pwm,
					int duty_cycle_ns, int period_ns)
{
	struct hibvt_pwm_chip *hi_pwm_chip = FUNC5(chip);
	u32 freq, period, duty;

	freq = FUNC3(FUNC2(hi_pwm_chip->clk), 1000000);

	period = FUNC3(freq * period_ns, 1000);
	duty = FUNC3(period * duty_cycle_ns, period_ns);

	FUNC4(hi_pwm_chip->base, FUNC0(pwm->hwpwm),
			PWM_PERIOD_MASK, period);

	FUNC4(hi_pwm_chip->base, FUNC1(pwm->hwpwm),
			PWM_DUTY_MASK, duty);
}