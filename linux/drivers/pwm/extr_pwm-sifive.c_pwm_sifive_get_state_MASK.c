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
typedef  scalar_t__ u32 ;
struct pwm_state {int enabled; int period; int duty_cycle; int /*<<< orphan*/  polarity; } ;
struct pwm_sifive_ddata {int real_period; scalar_t__ regs; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int PWM_SIFIVE_CMPWIDTH ; 
 scalar_t__ PWM_SIFIVE_PWMCFG ; 
 scalar_t__ PWM_SIFIVE_PWMCFG_EN_ALWAYS ; 
 scalar_t__ PWM_SIFIVE_PWMCMP0 ; 
 int PWM_SIFIVE_SIZE_PWMCMP ; 
 struct pwm_sifive_ddata* FUNC0 (struct pwm_chip*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct pwm_chip *chip, struct pwm_device *pwm,
				 struct pwm_state *state)
{
	struct pwm_sifive_ddata *ddata = FUNC0(chip);
	u32 duty, val;

	duty = FUNC1(ddata->regs + PWM_SIFIVE_PWMCMP0 +
		     pwm->hwpwm * PWM_SIFIVE_SIZE_PWMCMP);

	state->enabled = duty > 0;

	val = FUNC1(ddata->regs + PWM_SIFIVE_PWMCFG);
	if (!(val & PWM_SIFIVE_PWMCFG_EN_ALWAYS))
		state->enabled = false;

	state->period = ddata->real_period;
	state->duty_cycle =
		(u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
	state->polarity = PWM_POLARITY_INVERSED;
}