#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pwm_state {scalar_t__ polarity; scalar_t__ period; scalar_t__ enabled; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct atmel_pwm_chip {int updated_pwms; int /*<<< orphan*/  isr_lock; int /*<<< orphan*/  clk; TYPE_2__* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  period; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_CMR ; 
 int PWM_CMR_CPOL ; 
 int PWM_CMR_CPRE_MSK ; 
 int /*<<< orphan*/  PWM_ENA ; 
 int /*<<< orphan*/  PWM_ISR ; 
 scalar_t__ PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct pwm_state const*,unsigned long,unsigned long*) ; 
 int FUNC1 (struct pwm_chip*,struct pwm_state const*,unsigned long*,int*) ; 
 void* FUNC2 (struct atmel_pwm_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_pwm_chip*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_chip*,struct pwm_device*,int) ; 
 int FUNC5 (struct atmel_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pwm_chip*,struct pwm_device*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct pwm_chip*,struct pwm_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct pwm_device*,struct pwm_state*) ; 
 struct atmel_pwm_chip* FUNC14 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC15(struct pwm_chip *chip, struct pwm_device *pwm,
			   const struct pwm_state *state)
{
	struct atmel_pwm_chip *atmel_pwm = FUNC14(chip);
	struct pwm_state cstate;
	unsigned long cprd, cdty;
	u32 pres, val;
	int ret;

	FUNC13(pwm, &cstate);

	if (state->enabled) {
		if (cstate.enabled &&
		    cstate.polarity == state->polarity &&
		    cstate.period == state->period) {
			cprd = FUNC2(atmel_pwm, pwm->hwpwm,
						  atmel_pwm->data->regs.period);
			FUNC0(state, cprd, &cdty);
			FUNC7(chip, pwm, cdty);
			return 0;
		}

		ret = FUNC1(chip, state, &cprd,
							&pres);
		if (ret) {
			FUNC10(chip->dev,
				"failed to calculate cprd and prescaler\n");
			return ret;
		}

		FUNC0(state, cprd, &cdty);

		if (cstate.enabled) {
			FUNC4(chip, pwm, false);
		} else {
			ret = FUNC9(atmel_pwm->clk);
			if (ret) {
				FUNC10(chip->dev, "failed to enable clock\n");
				return ret;
			}
		}

		/* It is necessary to preserve CPOL, inside CMR */
		val = FUNC2(atmel_pwm, pwm->hwpwm, PWM_CMR);
		val = (val & ~PWM_CMR_CPRE_MSK) | (pres & PWM_CMR_CPRE_MSK);
		if (state->polarity == PWM_POLARITY_NORMAL)
			val &= ~PWM_CMR_CPOL;
		else
			val |= PWM_CMR_CPOL;
		FUNC3(atmel_pwm, pwm->hwpwm, PWM_CMR, val);
		FUNC6(chip, pwm, cprd, cdty);
		FUNC11(&atmel_pwm->isr_lock);
		atmel_pwm->updated_pwms |= FUNC5(atmel_pwm, PWM_ISR);
		atmel_pwm->updated_pwms &= ~(1 << pwm->hwpwm);
		FUNC12(&atmel_pwm->isr_lock);
		FUNC8(atmel_pwm, PWM_ENA, 1 << pwm->hwpwm);
	} else if (cstate.enabled) {
		FUNC4(chip, pwm, true);
	}

	return 0;
}