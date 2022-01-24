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
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct atmel_pwm_chip {int updated_pwms; int /*<<< orphan*/  clk; int /*<<< orphan*/  isr_lock; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  PWM_DIS ; 
 int /*<<< orphan*/  PWM_ISR ; 
 int /*<<< orphan*/  PWM_SR ; 
 int FUNC0 (struct atmel_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_pwm_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 
 struct atmel_pwm_chip* FUNC6 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct pwm_chip *chip, struct pwm_device *pwm,
			      bool disable_clk)
{
	struct atmel_pwm_chip *atmel_pwm = FUNC6(chip);
	unsigned long timeout = jiffies + 2 * HZ;

	/*
	 * Wait for at least a complete period to have passed before disabling a
	 * channel to be sure that CDTY has been updated
	 */
	FUNC3(&atmel_pwm->isr_lock);
	atmel_pwm->updated_pwms |= FUNC0(atmel_pwm, PWM_ISR);

	while (!(atmel_pwm->updated_pwms & (1 << pwm->hwpwm)) &&
	       FUNC5(jiffies, timeout)) {
		FUNC7(10, 100);
		atmel_pwm->updated_pwms |= FUNC0(atmel_pwm, PWM_ISR);
	}

	FUNC4(&atmel_pwm->isr_lock);
	FUNC1(atmel_pwm, PWM_DIS, 1 << pwm->hwpwm);

	/*
	 * Wait for the PWM channel disable operation to be effective before
	 * stopping the clock.
	 */
	timeout = jiffies + 2 * HZ;

	while ((FUNC0(atmel_pwm, PWM_SR) & (1 << pwm->hwpwm)) &&
	       FUNC5(jiffies, timeout))
		FUNC7(10, 100);

	if (disable_clk)
		FUNC2(atmel_pwm->clk);
}