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
typedef  int u32 ;
struct sun4i_pwm_chip {TYPE_1__* data; int /*<<< orphan*/  clk; } ;
struct pwm_state {int enabled; void* period; void* duty_cycle; int /*<<< orphan*/  polarity; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_prescaler_bypass; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned int,unsigned int) ; 
 unsigned int NSEC_PER_SEC ; 
 int PWM_ACT_STATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PWM_CLK_GATING ; 
 int /*<<< orphan*/  PWM_CTRL_REG ; 
 int PWM_EN ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 size_t PWM_PRESCAL_MASK ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 size_t FUNC5 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int* prescaler_table ; 
 int FUNC7 (struct sun4i_pwm_chip*,int /*<<< orphan*/ ) ; 
 struct sun4i_pwm_chip* FUNC8 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC9(struct pwm_chip *chip,
				struct pwm_device *pwm,
				struct pwm_state *state)
{
	struct sun4i_pwm_chip *sun4i_pwm = FUNC8(chip);
	u64 clk_rate, tmp;
	u32 val;
	unsigned int prescaler;

	clk_rate = FUNC6(sun4i_pwm->clk);

	val = FUNC7(sun4i_pwm, PWM_CTRL_REG);

	if ((FUNC5(val, pwm->hwpwm) == PWM_PRESCAL_MASK) &&
	    sun4i_pwm->data->has_prescaler_bypass)
		prescaler = 1;
	else
		prescaler = prescaler_table[FUNC5(val, pwm->hwpwm)];

	if (prescaler == 0)
		return;

	if (val & FUNC0(PWM_ACT_STATE, pwm->hwpwm))
		state->polarity = PWM_POLARITY_NORMAL;
	else
		state->polarity = PWM_POLARITY_INVERSED;

	if ((val & FUNC0(PWM_CLK_GATING | PWM_EN, pwm->hwpwm)) ==
	    FUNC0(PWM_CLK_GATING | PWM_EN, pwm->hwpwm))
		state->enabled = true;
	else
		state->enabled = false;

	val = FUNC7(sun4i_pwm, FUNC2(pwm->hwpwm));

	tmp = prescaler * NSEC_PER_SEC * FUNC3(val);
	state->duty_cycle = FUNC1(tmp, clk_rate);

	tmp = prescaler * NSEC_PER_SEC * FUNC4(val);
	state->period = FUNC1(tmp, clk_rate);
}