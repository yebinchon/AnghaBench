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
typedef  unsigned long u32 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct atmel_pwm_chip {TYPE_2__* data; } ;
struct TYPE_3__ {scalar_t__ duty_upd; scalar_t__ period_upd; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;

/* Variables and functions */
 scalar_t__ PWM_CMR ; 
 unsigned long PWM_CMR_UPD_CDTY ; 
 unsigned long FUNC0 (struct atmel_pwm_chip*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_pwm_chip*,int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 struct atmel_pwm_chip* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC3(struct pwm_chip *chip, struct pwm_device *pwm,
				  unsigned long cdty)
{
	struct atmel_pwm_chip *atmel_pwm = FUNC2(chip);
	u32 val;

	if (atmel_pwm->data->regs.duty_upd ==
	    atmel_pwm->data->regs.period_upd) {
		val = FUNC0(atmel_pwm, pwm->hwpwm, PWM_CMR);
		val &= ~PWM_CMR_UPD_CDTY;
		FUNC1(atmel_pwm, pwm->hwpwm, PWM_CMR, val);
	}

	FUNC1(atmel_pwm, pwm->hwpwm,
			    atmel_pwm->data->regs.duty_upd, cdty);
}