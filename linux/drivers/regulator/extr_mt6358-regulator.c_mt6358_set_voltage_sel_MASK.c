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
struct regulator_dev {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsel_mask; int /*<<< orphan*/  vsel_reg; } ;
struct mt6358_regulator_info {int* index_table; int vsel_shift; TYPE_1__ desc; } ;

/* Variables and functions */
 struct mt6358_regulator_info* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
				  unsigned int selector)
{
	int idx, ret;
	const u32 *pvol;
	struct mt6358_regulator_info *info = FUNC0(rdev);

	pvol = info->index_table;

	idx = pvol[selector];
	ret = FUNC1(rdev->regmap, info->desc.vsel_reg,
				 info->desc.vsel_mask,
				 idx << info->vsel_shift);

	return ret;
}