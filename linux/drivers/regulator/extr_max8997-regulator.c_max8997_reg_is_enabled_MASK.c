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
 int FUNC0 (struct regulator_dev*,int*,int*,int*) ; 
 int FUNC1 (struct i2c_client*,int,int*) ; 
 struct max8997_data* FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct max8997_data *max8997 = FUNC2(rdev);
	struct i2c_client *i2c = max8997->iodev->i2c;
	int ret, reg, mask, pattern;
	u8 val;

	ret = FUNC0(rdev, &reg, &mask, &pattern);
	if (ret)
		return ret;

	ret = FUNC1(i2c, reg, &val);
	if (ret)
		return ret;

	return (val & mask) == pattern;
}