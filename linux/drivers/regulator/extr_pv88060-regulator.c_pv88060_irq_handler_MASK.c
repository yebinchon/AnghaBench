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
struct pv88060 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/ ** rdev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int PV88060_E_OVER_TEMP ; 
 int PV88060_E_VDD_FLT ; 
 int PV88060_MAX_REGULATORS ; 
 int /*<<< orphan*/  PV88060_REG_EVENT_A ; 
 int /*<<< orphan*/  REGULATOR_EVENT_OVER_TEMP ; 
 int /*<<< orphan*/  REGULATOR_EVENT_UNDER_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct pv88060 *chip = data;
	int i, reg_val, err, ret = IRQ_NONE;

	err = FUNC1(chip->regmap, PV88060_REG_EVENT_A, &reg_val);
	if (err < 0)
		goto error_i2c;

	if (reg_val & PV88060_E_VDD_FLT) {
		for (i = 0; i < PV88060_MAX_REGULATORS; i++) {
			if (chip->rdev[i] != NULL) {
				FUNC3(chip->rdev[i]);
				FUNC4(chip->rdev[i],
					REGULATOR_EVENT_UNDER_VOLTAGE,
					NULL);
				FUNC5(chip->rdev[i]);
			}
		}

		err = FUNC2(chip->regmap, PV88060_REG_EVENT_A,
			PV88060_E_VDD_FLT);
		if (err < 0)
			goto error_i2c;

		ret = IRQ_HANDLED;
	}

	if (reg_val & PV88060_E_OVER_TEMP) {
		for (i = 0; i < PV88060_MAX_REGULATORS; i++) {
			if (chip->rdev[i] != NULL) {
				FUNC3(chip->rdev[i]);
				FUNC4(chip->rdev[i],
					REGULATOR_EVENT_OVER_TEMP,
					NULL);
				FUNC5(chip->rdev[i]);
			}
		}

		err = FUNC2(chip->regmap, PV88060_REG_EVENT_A,
			PV88060_E_OVER_TEMP);
		if (err < 0)
			goto error_i2c;

		ret = IRQ_HANDLED;
	}

	return ret;

error_i2c:
	FUNC0(chip->dev, "I2C error : %d\n", err);
	return IRQ_NONE;
}