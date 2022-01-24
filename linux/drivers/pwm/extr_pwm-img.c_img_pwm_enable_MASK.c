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
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct img_pwm_chip {int /*<<< orphan*/  periph_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERIP_PWM_PDM_CONTROL ; 
 int PERIP_PWM_PDM_CONTROL_CH_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWM_CTRL_CFG ; 
 int /*<<< orphan*/  FUNC2 (struct img_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct img_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct img_pwm_chip* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm)
{
	u32 val;
	struct img_pwm_chip *pwm_chip = FUNC6(chip);
	int ret;

	ret = FUNC4(chip->dev);
	if (ret < 0)
		return ret;

	val = FUNC2(pwm_chip, PWM_CTRL_CFG);
	val |= FUNC0(pwm->hwpwm);
	FUNC3(pwm_chip, PWM_CTRL_CFG, val);

	FUNC5(pwm_chip->periph_regs, PERIP_PWM_PDM_CONTROL,
			   PERIP_PWM_PDM_CONTROL_CH_MASK <<
			   FUNC1(pwm->hwpwm), 0);

	return 0;
}