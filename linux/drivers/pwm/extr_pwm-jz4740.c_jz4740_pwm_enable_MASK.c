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
struct pwm_device {int /*<<< orphan*/  hwpwm; int /*<<< orphan*/  pwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_TIMER_CTRL_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip, struct pwm_device *pwm)
{
	uint32_t ctrl = FUNC1(pwm->pwm);

	ctrl |= JZ_TIMER_CTRL_PWM_ENABLE;
	FUNC2(pwm->hwpwm, ctrl);
	FUNC0(pwm->hwpwm);

	return 0;
}