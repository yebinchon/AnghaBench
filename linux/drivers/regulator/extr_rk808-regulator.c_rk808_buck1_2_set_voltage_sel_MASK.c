#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rk808_regulator_data {struct gpio_desc** dvs_gpio; } ;
struct regulator_dev {int /*<<< orphan*/  regmap; TYPE_1__* desc; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {unsigned int vsel_reg; unsigned int vsel_mask; } ;

/* Variables and functions */
 unsigned int RK808_DVS_REG_OFFSET ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*,int) ; 
 struct rk808_regulator_data* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC7 (struct regulator_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct regulator_dev *rdev,
					 unsigned sel)
{
	struct rk808_regulator_data *pdata = FUNC3(rdev);
	int id = FUNC4(rdev);
	struct gpio_desc *gpio = pdata->dvs_gpio[id];
	unsigned int reg = rdev->desc->vsel_reg;
	unsigned old_sel;
	int ret, gpio_level;

	if (!gpio)
		return FUNC7(rdev, sel);

	gpio_level = FUNC1(gpio);
	if (gpio_level == 0) {
		reg += RK808_DVS_REG_OFFSET;
		ret = FUNC5(rdev->regmap, rdev->desc->vsel_reg, &old_sel);
	} else {
		ret = FUNC5(rdev->regmap,
				  reg + RK808_DVS_REG_OFFSET,
				  &old_sel);
	}

	if (ret != 0)
		return ret;

	sel <<= FUNC0(rdev->desc->vsel_mask) - 1;
	sel |= old_sel & ~rdev->desc->vsel_mask;

	ret = FUNC6(rdev->regmap, reg, sel);
	if (ret)
		return ret;

	FUNC2(gpio, !gpio_level);

	return ret;
}