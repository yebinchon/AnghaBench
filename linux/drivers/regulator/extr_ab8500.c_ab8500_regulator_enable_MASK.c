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
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct ab8500_regulator_info {int /*<<< orphan*/  update_val; int /*<<< orphan*/  update_mask; int /*<<< orphan*/  update_reg; int /*<<< orphan*/  update_bank; TYPE_1__ desc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 
 struct ab8500_regulator_info* FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	int ret;
	struct ab8500_regulator_info *info = FUNC4(rdev);

	if (info == NULL) {
		FUNC1(FUNC3(rdev), "regulator info null pointer\n");
		return -EINVAL;
	}

	ret = FUNC0(info->dev,
		info->update_bank, info->update_reg,
		info->update_mask, info->update_val);
	if (ret < 0) {
		FUNC1(FUNC3(rdev),
			"couldn't set enable bits for regulator\n");
		return ret;
	}

	FUNC2(FUNC3(rdev),
		"%s-enable (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\n",
		info->desc.name, info->update_bank, info->update_reg,
		info->update_mask, info->update_val);

	return ret;
}