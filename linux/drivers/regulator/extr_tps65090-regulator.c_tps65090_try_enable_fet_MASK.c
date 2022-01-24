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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  enable_mask; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL_PG_BIT ; 
 int /*<<< orphan*/  CTRL_TO_BIT ; 
 int ENOTRECOVERABLE ; 
 int MAX_CTRL_READ_TRIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	unsigned int control;
	int ret, i;

	ret = FUNC3(rdev->regmap, rdev->desc->enable_reg,
				 rdev->desc->enable_mask,
				 rdev->desc->enable_mask);
	if (ret < 0) {
		FUNC1(&rdev->dev, "Error in updating reg %#x\n",
			rdev->desc->enable_reg);
		return ret;
	}

	for (i = 0; i < MAX_CTRL_READ_TRIES; i++) {
		ret = FUNC2(rdev->regmap, rdev->desc->enable_reg,
				  &control);
		if (ret < 0)
			return ret;

		if (!(control & FUNC0(CTRL_TO_BIT)))
			break;

		FUNC4(1000, 1500);
	}
	if (!(control & FUNC0(CTRL_PG_BIT)))
		return -ENOTRECOVERABLE;

	return 0;
}