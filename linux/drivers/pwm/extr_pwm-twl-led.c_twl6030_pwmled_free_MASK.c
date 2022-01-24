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
struct twl_pwmled_chip {int /*<<< orphan*/  mutex; } ;
struct pwm_device {int /*<<< orphan*/  label; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL6030_LED_PWM_CTRL2 ; 
 int /*<<< orphan*/  TWL6030_MODULE_ID1 ; 
 int /*<<< orphan*/  TWL6040_LED_MODE_HW ; 
 int /*<<< orphan*/  TWL6040_LED_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct twl_pwmled_chip* FUNC3 (struct pwm_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct twl_pwmled_chip *twl = FUNC3(chip);
	int ret;
	u8 val;

	FUNC1(&twl->mutex);
	ret = FUNC4(TWL6030_MODULE_ID1, &val, TWL6030_LED_PWM_CTRL2);
	if (ret < 0) {
		FUNC0(chip->dev, "%s: Failed to read PWM_CTRL2\n",
			pwm->label);
		goto out;
	}

	val &= ~TWL6040_LED_MODE_MASK;
	val |= TWL6040_LED_MODE_HW;

	ret = FUNC5(TWL6030_MODULE_ID1, val, TWL6030_LED_PWM_CTRL2);
	if (ret < 0)
		FUNC0(chip->dev, "%s: Failed to free PWM\n", pwm->label);

out:
	FUNC2(&twl->mutex);
}