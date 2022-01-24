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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct max77686_data {unsigned int* opmode; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX77686_BUCK5 ; 
 unsigned int MAX77686_LDO_LOWPOWER_PWRREQ ; 
 unsigned int MAX77686_OPMODE_SHIFT ; 
#define  REGULATOR_MODE_IDLE 129 
#define  REGULATOR_MODE_NORMAL 128 
 unsigned int FUNC0 (struct max77686_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct max77686_data* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev,
				     unsigned int mode)
{
	struct max77686_data *max77686 = FUNC2(rdev);
	unsigned int val;
	int ret, id = FUNC3(rdev);

	/* BUCK[5-9] doesn't support this feature */
	if (id >= MAX77686_BUCK5)
		return 0;

	switch (mode) {
	case REGULATOR_MODE_IDLE:			/* ON in LP Mode */
		val = MAX77686_LDO_LOWPOWER_PWRREQ;
		break;
	case REGULATOR_MODE_NORMAL:			/* ON in Normal Mode */
		val = FUNC0(max77686, id);
		break;
	default:
		FUNC1("%s: regulator_suspend_mode : 0x%x not supported\n",
			rdev->desc->name, mode);
		return -EINVAL;
	}

	ret = FUNC4(rdev->regmap, rdev->desc->enable_reg,
				  rdev->desc->enable_mask,
				  val << MAX77686_OPMODE_SHIFT);
	if (ret)
		return ret;

	max77686->opmode[id] = val;
	return 0;
}