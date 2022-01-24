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
struct da9211 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * rdev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int DA9211_E_OV_CURR_A ; 
 int DA9211_E_OV_CURR_B ; 
 int /*<<< orphan*/  DA9211_REG_EVENT_B ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  REGULATOR_EVENT_OVER_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct da9211 *chip = data;
	int reg_val, err, ret = IRQ_NONE;

	err = FUNC1(chip->regmap, DA9211_REG_EVENT_B, &reg_val);
	if (err < 0)
		goto error_i2c;

	if (reg_val & DA9211_E_OV_CURR_A) {
	        FUNC3(chip->rdev[0]);
		FUNC4(chip->rdev[0],
			REGULATOR_EVENT_OVER_CURRENT, NULL);
	        FUNC5(chip->rdev[0]);

		err = FUNC2(chip->regmap, DA9211_REG_EVENT_B,
			DA9211_E_OV_CURR_A);
		if (err < 0)
			goto error_i2c;

		ret = IRQ_HANDLED;
	}

	if (reg_val & DA9211_E_OV_CURR_B) {
	        FUNC3(chip->rdev[1]);
		FUNC4(chip->rdev[1],
			REGULATOR_EVENT_OVER_CURRENT, NULL);
	        FUNC5(chip->rdev[1]);

		err = FUNC2(chip->regmap, DA9211_REG_EVENT_B,
			DA9211_E_OV_CURR_B);
		if (err < 0)
			goto error_i2c;

		ret = IRQ_HANDLED;
	}

	return ret;

error_i2c:
	FUNC0(chip->dev, "I2C error : %d\n", err);
	return IRQ_NONE;
}