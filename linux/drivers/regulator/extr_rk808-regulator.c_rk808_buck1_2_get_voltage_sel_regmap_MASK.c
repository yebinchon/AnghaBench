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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {unsigned int vsel_mask; scalar_t__ vsel_reg; } ;

/* Variables and functions */
 scalar_t__ RK808_DVS_REG_OFFSET ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 struct rk808_regulator_data* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int FUNC5 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev)
{
	struct rk808_regulator_data *pdata = FUNC2(rdev);
	int id = FUNC3(rdev);
	struct gpio_desc *gpio = pdata->dvs_gpio[id];
	unsigned int val;
	int ret;

	if (!gpio || FUNC1(gpio) == 0)
		return FUNC5(rdev);

	ret = FUNC4(rdev->regmap,
			  rdev->desc->vsel_reg + RK808_DVS_REG_OFFSET,
			  &val);
	if (ret != 0)
		return ret;

	val &= rdev->desc->vsel_mask;
	val >>= FUNC0(rdev->desc->vsel_mask) - 1;

	return val;
}