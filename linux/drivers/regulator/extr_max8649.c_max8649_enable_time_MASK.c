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
struct regulator_dev {TYPE_1__* desc; } ;
struct max8649_regulator_info {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsel_reg; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MAX8649_RAMP ; 
 unsigned int MAX8649_RAMP_MASK ; 
 unsigned int MAX8649_VOL_MASK ; 
 struct max8649_regulator_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (struct regulator_dev*,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct max8649_regulator_info *info = FUNC1(rdev);
	int voltage, rate, ret;
	unsigned int val;

	/* get voltage */
	ret = FUNC2(info->regmap, rdev->desc->vsel_reg, &val);
	if (ret != 0)
		return ret;
	val &= MAX8649_VOL_MASK;
	voltage = FUNC3(rdev, (unsigned char)val);

	/* get rate */
	ret = FUNC2(info->regmap, MAX8649_RAMP, &val);
	if (ret != 0)
		return ret;
	ret = (val & MAX8649_RAMP_MASK) >> 5;
	rate = (32 * 1000) >> ret;	/* uV/uS */

	return FUNC0(voltage, rate);
}