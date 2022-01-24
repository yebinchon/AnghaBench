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
struct regulator_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int RK809_ID_SW2 ; 
 int RK817_ID_DCDC1 ; 
 int RK817_ID_DCDC4 ; 
 int RK817_ID_LDO1 ; 
 int RK817_ID_LDO8 ; 
 int RK817_ID_LDO9 ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
					 unsigned int en)
{
	unsigned int reg;
	int id = FUNC2(rdev);
	unsigned int id_slp, msk, val;

	if (id >= RK817_ID_DCDC1 && id <= RK817_ID_DCDC4)
		id_slp = id;
	else if (id >= RK817_ID_LDO1 && id <= RK817_ID_LDO8)
		id_slp = 8 + (id - RK817_ID_LDO1);
	else if (id >= RK817_ID_LDO9 && id <= RK809_ID_SW2)
		id_slp = 4 + (id - RK817_ID_LDO9);
	else
		return -EINVAL;

	reg = FUNC1(id_slp / 8);

	msk = FUNC0(id_slp % 8);
	if (en)
		val = msk;
	else
		val = 0;

	return FUNC3(rdev->regmap, reg, msk, val);
}