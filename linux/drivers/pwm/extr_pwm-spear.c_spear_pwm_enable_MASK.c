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
typedef  int /*<<< orphan*/  u32 ;
struct spear_pwm_chip {int /*<<< orphan*/  clk; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWMCR ; 
 int /*<<< orphan*/  PWMCR_PWM_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spear_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spear_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spear_pwm_chip* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC4(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct spear_pwm_chip *pc = FUNC3(chip);
	int rc = 0;
	u32 val;

	rc = FUNC0(pc->clk);
	if (rc)
		return rc;

	val = FUNC1(pc, pwm->hwpwm, PWMCR);
	val |= PWMCR_PWM_ENABLE;
	FUNC2(pc, pwm->hwpwm, PWMCR, val);

	return 0;
}