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
struct TYPE_2__ {int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 unsigned int MAX77686_OFF_PWRREQ ; 
 unsigned int FUNC0 (int) ; 
 struct max77686_data* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	unsigned int val, shift;
	struct max77686_data *max77686 = FUNC1(rdev);
	int ret, id = FUNC2(rdev);

	shift = FUNC0(id);
	val = MAX77686_OFF_PWRREQ;

	ret = FUNC3(rdev->regmap, rdev->desc->enable_reg,
				 rdev->desc->enable_mask, val << shift);
	if (ret)
		return ret;

	max77686->opmode[id] = val;
	return 0;
}