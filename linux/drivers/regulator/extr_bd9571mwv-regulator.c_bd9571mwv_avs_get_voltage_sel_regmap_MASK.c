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
struct TYPE_2__ {unsigned int vsel_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	unsigned int val;
	int ret;

	ret = FUNC1(rdev);
	if (ret < 0)
		return ret;

	ret = FUNC3(rdev->regmap, FUNC0(ret), &val);
	if (ret != 0)
		return ret;

	val &= rdev->desc->vsel_mask;
	val >>= FUNC2(rdev->desc->vsel_mask) - 1;

	return val;
}