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
struct regulator_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct mt6358_regulator_info {int da_vsel_shift; int da_vsel_mask; TYPE_1__ desc; int /*<<< orphan*/  da_vsel_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct mt6358_regulator_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	int ret, regval;
	struct mt6358_regulator_info *info = FUNC1(rdev);

	ret = FUNC2(rdev->regmap, info->da_vsel_reg, &regval);
	if (ret != 0) {
		FUNC0(&rdev->dev,
			"Failed to get mt6358 Buck %s vsel reg: %d\n",
			info->desc.name, ret);
		return ret;
	}

	ret = (regval >> info->da_vsel_shift) & info->da_vsel_mask;

	return ret;
}