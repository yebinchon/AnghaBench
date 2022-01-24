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
typedef  int u32 ;
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct hi6421_regulator_info {int mode_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 unsigned int REGULATOR_MODE_NORMAL ; 
 unsigned int REGULATOR_MODE_STANDBY ; 
 struct hi6421_regulator_info* FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static unsigned int FUNC2(struct regulator_dev *rdev)
{
	struct hi6421_regulator_info *info = FUNC0(rdev);
	u32 reg_val;

	FUNC1(rdev->regmap, rdev->desc->enable_reg, &reg_val);
	if (reg_val & info->mode_mask)
		return REGULATOR_MODE_STANDBY;

	return REGULATOR_MODE_NORMAL;
}