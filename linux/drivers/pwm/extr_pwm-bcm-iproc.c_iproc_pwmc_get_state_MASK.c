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
struct pwm_state {int enabled; void* duty_cycle; void* period; int /*<<< orphan*/  polarity; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct iproc_pwmc {scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPROC_PWM_CTRL_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int IPROC_PWM_PERIOD_MAX ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int IPROC_PWM_PRESCALE_MAX ; 
 scalar_t__ IPROC_PWM_PRESCALE_OFFSET ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int) ; 
 int FUNC8 (scalar_t__) ; 
 struct iproc_pwmc* FUNC9 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC10(struct pwm_chip *chip, struct pwm_device *pwm,
				 struct pwm_state *state)
{
	struct iproc_pwmc *ip = FUNC9(chip);
	u64 tmp, multi, rate;
	u32 value, prescale;

	rate = FUNC6(ip->clk);

	value = FUNC8(ip->base + IPROC_PWM_CTRL_OFFSET);

	if (value & FUNC0(FUNC1(pwm->hwpwm)))
		state->enabled = true;
	else
		state->enabled = false;

	if (value & FUNC0(FUNC2(pwm->hwpwm)))
		state->polarity = PWM_POLARITY_NORMAL;
	else
		state->polarity = PWM_POLARITY_INVERSED;

	value = FUNC8(ip->base + IPROC_PWM_PRESCALE_OFFSET);
	prescale = value >> FUNC5(pwm->hwpwm);
	prescale &= IPROC_PWM_PRESCALE_MAX;

	multi = NSEC_PER_SEC * (prescale + 1);

	value = FUNC8(ip->base + FUNC4(pwm->hwpwm));
	tmp = (value & IPROC_PWM_PERIOD_MAX) * multi;
	state->period = FUNC7(tmp, rate);

	value = FUNC8(ip->base + FUNC3(pwm->hwpwm));
	tmp = (value & IPROC_PWM_PERIOD_MAX) * multi;
	state->duty_cycle = FUNC7(tmp, rate);
}