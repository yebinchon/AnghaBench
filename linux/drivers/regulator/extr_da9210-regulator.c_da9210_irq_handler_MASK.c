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
struct da9210 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  rdev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 unsigned int DA9210_E_NPWRGOOD ; 
 unsigned int DA9210_E_OVCURR ; 
 unsigned int DA9210_E_TEMP_CRIT ; 
 unsigned int DA9210_E_TEMP_WARN ; 
 unsigned int DA9210_E_VMAX ; 
 int /*<<< orphan*/  DA9210_REG_EVENT_B ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  REGULATOR_EVENT_OVER_CURRENT ; 
 int /*<<< orphan*/  REGULATOR_EVENT_OVER_TEMP ; 
 int /*<<< orphan*/  REGULATOR_EVENT_REGULATION_OUT ; 
 int /*<<< orphan*/  REGULATOR_EVENT_UNDER_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct da9210 *chip = data;
	unsigned int val, handled = 0;
	int error, ret = IRQ_NONE;

	error = FUNC2(chip->regmap, DA9210_REG_EVENT_B, &val);
	if (error < 0)
		goto error_i2c;

	FUNC4(chip->rdev);

	if (val & DA9210_E_OVCURR) {
		FUNC5(chip->rdev,
					      REGULATOR_EVENT_OVER_CURRENT,
					      NULL);
		handled |= DA9210_E_OVCURR;
	}
	if (val & DA9210_E_NPWRGOOD) {
		FUNC5(chip->rdev,
					      REGULATOR_EVENT_UNDER_VOLTAGE,
					      NULL);
		handled |= DA9210_E_NPWRGOOD;
	}
	if (val & (DA9210_E_TEMP_WARN | DA9210_E_TEMP_CRIT)) {
		FUNC5(chip->rdev,
					      REGULATOR_EVENT_OVER_TEMP, NULL);
		handled |= val & (DA9210_E_TEMP_WARN | DA9210_E_TEMP_CRIT);
	}
	if (val & DA9210_E_VMAX) {
		FUNC5(chip->rdev,
					      REGULATOR_EVENT_REGULATION_OUT,
					      NULL);
		handled |= DA9210_E_VMAX;
	}

	FUNC6(chip->rdev);

	if (handled) {
		/* Clear handled events */
		error = FUNC3(chip->regmap, DA9210_REG_EVENT_B, handled);
		if (error < 0)
			goto error_i2c;

		ret = IRQ_HANDLED;
	}

	return ret;

error_i2c:
	FUNC0(FUNC1(chip->regmap), "I2C error : %d\n", error);
	return ret;
}