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
struct TYPE_2__ {unsigned int csel_mask; int* curr_table; unsigned int n_current_limits; int /*<<< orphan*/  csel_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC2(struct regulator_dev *rdev)
{
	unsigned int val;
	int ret;

	ret = FUNC1(rdev->regmap, rdev->desc->csel_reg, &val);
	if (ret != 0)
		return ret;

	val &= rdev->desc->csel_mask;
	val >>= FUNC0(rdev->desc->csel_mask) - 1;

	if (rdev->desc->curr_table) {
		if (val >= rdev->desc->n_current_limits)
			return -EINVAL;

		return rdev->desc->curr_table[val];
	}

	return -EINVAL;
}