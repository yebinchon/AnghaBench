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
typedef  int u8 ;
struct regulator_dev {int dummy; } ;
struct max8997_data {TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct i2c_client* i2c; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX8997_CHARGER_CV ; 
 int FUNC0 (struct regulator_dev*,int*,int*,int*) ; 
 int FUNC1 (struct i2c_client*,int,int,int) ; 
 struct max8997_data* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
		int min_uV, int max_uV, unsigned *selector)
{
	struct max8997_data *max8997 = FUNC2(rdev);
	struct i2c_client *i2c = max8997->iodev->i2c;
	int rid = FUNC3(rdev);
	int lb, ub;
	int reg, shift = 0, mask, ret = 0;
	u8 val = 0x0;

	if (rid != MAX8997_CHARGER_CV)
		return -EINVAL;

	ret = FUNC0(rdev, &reg, &shift, &mask);
	if (ret)
		return ret;

	if (max_uV < 4000000 || min_uV > 4350000)
		return -EINVAL;

	if (min_uV <= 4000000)
		val = 0x1;
	else if (min_uV <= 4200000 && max_uV >= 4200000)
		val = 0x0;
	else {
		lb = (min_uV - 4000001) / 20000 + 2;
		ub = (max_uV - 4000000) / 20000 + 1;

		if (lb > ub)
			return -EINVAL;

		if (lb < 0xf)
			val = lb;
		else {
			if (ub >= 0xf)
				val = 0xf;
			else
				return -EINVAL;
		}
	}

	*selector = val;

	ret = FUNC1(i2c, reg, val << shift, mask);

	return ret;
}