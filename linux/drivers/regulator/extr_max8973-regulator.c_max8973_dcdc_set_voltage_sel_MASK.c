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
struct regulator_dev {int dummy; } ;
struct max8973_chip {int curr_vout_reg; int curr_gpio_val; unsigned int* curr_vout_val; int /*<<< orphan*/  dvs_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8973_VOUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct max8973_chip*,unsigned int,int*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct max8973_chip* FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev,
	     unsigned vsel)
{
	struct max8973_chip *max = FUNC4(rdev);
	int ret;
	bool found = false;
	int vout_reg = max->curr_vout_reg;
	int gpio_val = max->curr_gpio_val;

	/*
	 * If gpios are available to select the VOUT register then least
	 * recently used register for new configuration.
	 */
	if (FUNC2(max->dvs_gpio))
		found = FUNC1(max, vsel,
					&vout_reg, &gpio_val);

	if (!found) {
		ret = FUNC5(max->regmap, vout_reg,
					MAX8973_VOUT_MASK, vsel);
		if (ret < 0) {
			FUNC0(max->dev, "register %d update failed, err %d\n",
				 vout_reg, ret);
			return ret;
		}
		max->curr_vout_reg = vout_reg;
		max->curr_vout_val[gpio_val] = vsel;
	}

	/* Select proper VOUT register vio gpios */
	if (FUNC2(max->dvs_gpio)) {
		FUNC3(max->dvs_gpio, gpio_val & 0x1);
		max->curr_gpio_val = gpio_val;
	}
	return 0;
}