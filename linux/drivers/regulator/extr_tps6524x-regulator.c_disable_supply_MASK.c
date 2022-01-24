#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tps6524x {int dummy; } ;
struct supply_info {int /*<<< orphan*/  enable; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 struct tps6524x* FUNC0 (struct regulator_dev*) ; 
 size_t FUNC1 (struct regulator_dev*) ; 
 struct supply_info* supply_info ; 
 int FUNC2 (struct tps6524x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	const struct supply_info *info;
	struct tps6524x *hw;

	hw	= FUNC0(rdev);
	info	= &supply_info[FUNC1(rdev)];

	return FUNC2(hw, &info->enable, 0);
}