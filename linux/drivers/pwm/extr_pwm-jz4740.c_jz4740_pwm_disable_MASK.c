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
typedef  int /*<<< orphan*/  uint32_t ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_TIMER_CTRL_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct pwm_chip *chip, struct pwm_device *pwm)
{
	uint32_t ctrl = FUNC1(pwm->hwpwm);

	/*
	 * Set duty > period. This trick allows the TCU channels in TCU2 mode to
	 * properly return to their init level.
	 */
	FUNC3(pwm->hwpwm, 0xffff);
	FUNC4(pwm->hwpwm, 0x0);

	/*
	 * Disable PWM output.
	 * In TCU2 mode (channel 1/2 on JZ4750+), this must be done before the
	 * counter is stopped, while in TCU1 mode the order does not matter.
	 */
	ctrl &= ~JZ_TIMER_CTRL_PWM_ENABLE;
	FUNC2(pwm->hwpwm, ctrl);

	/* Stop counter */
	FUNC0(pwm->hwpwm);
}