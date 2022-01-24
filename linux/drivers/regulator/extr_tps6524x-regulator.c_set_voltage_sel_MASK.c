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
struct tps6524x {int dummy; } ;
struct supply_info {int /*<<< orphan*/  voltage; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int n_voltages; } ;

/* Variables and functions */
 int EINVAL ; 
 struct tps6524x* FUNC0 (struct regulator_dev*) ; 
 size_t FUNC1 (struct regulator_dev*) ; 
 struct supply_info* supply_info ; 
 int FUNC2 (struct tps6524x*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, unsigned selector)
{
	const struct supply_info *info;
	struct tps6524x *hw;

	hw	= FUNC0(rdev);
	info	= &supply_info[FUNC1(rdev)];

	if (rdev->desc->n_voltages == 1)
		return -EINVAL;

	return FUNC2(hw, &info->voltage, selector);
}