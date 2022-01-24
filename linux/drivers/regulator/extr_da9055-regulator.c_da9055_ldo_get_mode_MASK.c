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
struct TYPE_2__ {int sl_shift; int /*<<< orphan*/  reg_b; } ;
struct da9055_regulator_info {TYPE_1__ volt; } ;
struct da9055_regulator {int /*<<< orphan*/  da9055; struct da9055_regulator_info* info; } ;

/* Variables and functions */
 unsigned int REGULATOR_MODE_NORMAL ; 
 unsigned int REGULATOR_MODE_STANDBY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da9055_regulator* FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static unsigned int FUNC2(struct regulator_dev *rdev)
{
	struct da9055_regulator *regulator = FUNC1(rdev);
	struct da9055_regulator_info *info = regulator->info;
	int ret;

	ret = FUNC0(regulator->da9055, info->volt.reg_b);
	if (ret < 0)
		return ret;

	if (ret >> info->volt.sl_shift)
		return REGULATOR_MODE_STANDBY;
	else
		return REGULATOR_MODE_NORMAL;
}