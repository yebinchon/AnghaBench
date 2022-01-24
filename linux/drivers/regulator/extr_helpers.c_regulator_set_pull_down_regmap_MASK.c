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
struct TYPE_2__ {unsigned int pull_down_val_on; unsigned int pull_down_mask; int /*<<< orphan*/  pull_down_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

int FUNC1(struct regulator_dev *rdev)
{
	unsigned int val;

	val = rdev->desc->pull_down_val_on;
	if (!val)
		val = rdev->desc->pull_down_mask;

	return FUNC0(rdev->regmap, rdev->desc->pull_down_reg,
				  rdev->desc->pull_down_mask, val);
}