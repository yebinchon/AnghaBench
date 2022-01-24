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
struct max77650_charger_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int) ; 
#define  MAX77650_CHGIN_OKAY 130 
#define  MAX77650_CHGIN_OVERVOLTAGE_LOCKOUT 129 
#define  MAX77650_CHGIN_UNDERVOLTAGE_LOCKOUT 128 
 int /*<<< orphan*/  MAX77650_REG_STAT_CHG_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct max77650_charger_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct max77650_charger_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct max77650_charger_data *chg = data;
	int rv, reg;

	rv = FUNC4(chg->map, MAX77650_REG_STAT_CHG_B, &reg);
	if (rv) {
		FUNC1(chg->dev,
			"unable to read the charger status: %d\n", rv);
		return IRQ_HANDLED;
	}

	switch (FUNC0(reg)) {
	case MAX77650_CHGIN_UNDERVOLTAGE_LOCKOUT:
		FUNC1(chg->dev, "undervoltage lockout detected, disabling charger\n");
		FUNC2(chg);
		break;
	case MAX77650_CHGIN_OVERVOLTAGE_LOCKOUT:
		FUNC1(chg->dev, "overvoltage lockout detected, disabling charger\n");
		FUNC2(chg);
		break;
	case MAX77650_CHGIN_OKAY:
		FUNC3(chg);
		break;
	default:
		/* May be 0x10 - debouncing */
		break;
	}

	return IRQ_HANDLED;
}