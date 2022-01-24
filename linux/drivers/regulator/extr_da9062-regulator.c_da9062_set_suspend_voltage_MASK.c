#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {TYPE_2__* desc; } ;
struct da9062_regulator_info {int /*<<< orphan*/  suspend_vsel_reg; } ;
struct da9062_regulator {TYPE_1__* hw; struct da9062_regulator_info* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  vsel_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct da9062_regulator* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct regulator_dev*,int,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, int uv)
{
	struct da9062_regulator *regl = FUNC1(rdev);
	const struct da9062_regulator_info *rinfo = regl->info;
	int ret, sel;

	sel = FUNC3(rdev, uv, uv);
	if (sel < 0)
		return sel;

	sel <<= FUNC0(rdev->desc->vsel_mask) - 1;

	ret = FUNC2(regl->hw->regmap, rinfo->suspend_vsel_reg,
				 rdev->desc->vsel_mask, sel);

	return ret;
}