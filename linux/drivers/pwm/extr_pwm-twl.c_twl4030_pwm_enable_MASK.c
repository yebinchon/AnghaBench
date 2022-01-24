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
struct twl_pwm_chip {int /*<<< orphan*/  mutex; } ;
struct pwm_device {int /*<<< orphan*/  label; int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_GPBR1_REG ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTBR ; 
 int /*<<< orphan*/  TWL4030_PWMXCLK_ENABLE ; 
 int /*<<< orphan*/  TWL4030_PWMX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct twl_pwm_chip* FUNC4 (struct pwm_chip*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct twl_pwm_chip *twl = FUNC4(chip);
	int ret;
	u8 val;

	FUNC2(&twl->mutex);
	ret = FUNC5(TWL4030_MODULE_INTBR, &val, TWL4030_GPBR1_REG);
	if (ret < 0) {
		FUNC1(chip->dev, "%s: Failed to read GPBR1\n", pwm->label);
		goto out;
	}

	val |= FUNC0(pwm->hwpwm, TWL4030_PWMXCLK_ENABLE);

	ret = FUNC6(TWL4030_MODULE_INTBR, val, TWL4030_GPBR1_REG);
	if (ret < 0)
		FUNC1(chip->dev, "%s: Failed to enable PWM\n", pwm->label);

	val |= FUNC0(pwm->hwpwm, TWL4030_PWMX_ENABLE);

	ret = FUNC6(TWL4030_MODULE_INTBR, val, TWL4030_GPBR1_REG);
	if (ret < 0)
		FUNC1(chip->dev, "%s: Failed to enable PWM\n", pwm->label);

out:
	FUNC3(&twl->mutex);
	return ret;
}