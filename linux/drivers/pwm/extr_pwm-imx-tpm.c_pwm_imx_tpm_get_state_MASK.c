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
struct pwm_state {int enabled; int /*<<< orphan*/  polarity; int /*<<< orphan*/  duty_cycle; int /*<<< orphan*/  period; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct imx_tpm_pwm_chip {scalar_t__ base; int /*<<< orphan*/  clk; int /*<<< orphan*/  real_period; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int NSEC_PER_SEC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PWM_IMX_TPM_CnSC_ELS ; 
 int PWM_IMX_TPM_CnSC_ELS_INVERSED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PWM_IMX_TPM_SC ; 
 int PWM_IMX_TPM_SC_PS ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 struct imx_tpm_pwm_chip* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC7(struct pwm_chip *chip,
				  struct pwm_device *pwm,
				  struct pwm_state *state)
{
	struct imx_tpm_pwm_chip *tpm = FUNC6(chip);
	u32 rate, val, prescale;
	u64 tmp;

	/* get period */
	state->period = tpm->real_period;

	/* get duty cycle */
	rate = FUNC4(tpm->clk);
	val = FUNC5(tpm->base + PWM_IMX_TPM_SC);
	prescale = FUNC1(PWM_IMX_TPM_SC_PS, val);
	tmp = FUNC5(tpm->base + FUNC3(pwm->hwpwm));
	tmp = (tmp << prescale) * NSEC_PER_SEC;
	state->duty_cycle = FUNC0(tmp, rate);

	/* get polarity */
	val = FUNC5(tpm->base + FUNC2(pwm->hwpwm));
	if ((val & PWM_IMX_TPM_CnSC_ELS) == PWM_IMX_TPM_CnSC_ELS_INVERSED)
		state->polarity = PWM_POLARITY_INVERSED;
	else
		/*
		 * Assume reserved values (2b00 and 2b11) to yield
		 * normal polarity.
		 */
		state->polarity = PWM_POLARITY_NORMAL;

	/* get channel status */
	state->enabled = FUNC1(PWM_IMX_TPM_CnSC_ELS, val) ? true : false;
}