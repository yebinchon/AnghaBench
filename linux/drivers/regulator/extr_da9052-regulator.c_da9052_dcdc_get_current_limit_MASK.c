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
struct da9052_regulator {TYPE_1__* da9052; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;

/* Variables and functions */
 scalar_t__ DA9052 ; 
 scalar_t__ DA9052_BUCKA_REG ; 
 int DA9052_BUCK_ILIM_MASK_EVEN ; 
 int DA9052_BUCK_ILIM_MASK_ODD ; 
 int** da9052_current_limits ; 
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 struct da9052_regulator* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct da9052_regulator *regulator = FUNC1(rdev);
	int offset = FUNC2(rdev);
	int ret, row = 2;

	ret = FUNC0(regulator->da9052, DA9052_BUCKA_REG + offset/2);
	if (ret < 0)
		return ret;

	/* Determine the even or odd position of the buck current limit
	 * register field
	*/
	if (offset % 2 == 0)
		ret = (ret & DA9052_BUCK_ILIM_MASK_EVEN) >> 2;
	else
		ret = (ret & DA9052_BUCK_ILIM_MASK_ODD) >> 6;

	/* Select the appropriate current limit range */
	if (regulator->da9052->chip_id == DA9052)
		row = 0;
	else if (offset == 0)
		row = 1;

	return da9052_current_limits[row][ret];
}