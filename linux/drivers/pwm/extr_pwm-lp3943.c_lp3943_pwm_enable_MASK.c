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
typedef  int /*<<< orphan*/  u8 ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lp3943_pwm_map {int dummy; } ;
struct lp3943_pwm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP3943_DIM_PWM0 ; 
 int /*<<< orphan*/  LP3943_DIM_PWM1 ; 
 int FUNC0 (struct lp3943_pwm*,struct lp3943_pwm_map*,int /*<<< orphan*/ ) ; 
 struct lp3943_pwm_map* FUNC1 (struct pwm_device*) ; 
 struct lp3943_pwm* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC3(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct lp3943_pwm *lp3943_pwm = FUNC2(chip);
	struct lp3943_pwm_map *pwm_map = FUNC1(pwm);
	u8 val;

	if (pwm->hwpwm == 0)
		val = LP3943_DIM_PWM0;
	else
		val = LP3943_DIM_PWM1;

	/*
	 * Each PWM generator is set to control any of outputs of LP3943.
	 * To enable/disable the PWM, these output pins should be configured.
	 */

	return FUNC0(lp3943_pwm, pwm_map, val);
}