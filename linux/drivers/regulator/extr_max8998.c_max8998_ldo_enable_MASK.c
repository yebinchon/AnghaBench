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
struct max8998_data {TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct i2c_client* i2c; } ;

/* Variables and functions */
 int FUNC0 (struct regulator_dev*,int*,int*) ; 
 int FUNC1 (struct i2c_client*,int,int,int) ; 
 struct max8998_data* FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct max8998_data *max8998 = FUNC2(rdev);
	struct i2c_client *i2c = max8998->iodev->i2c;
	int reg, shift = 8, ret;

	ret = FUNC0(rdev, &reg, &shift);
	if (ret)
		return ret;

	return FUNC1(i2c, reg, 1<<shift, 1<<shift);
}