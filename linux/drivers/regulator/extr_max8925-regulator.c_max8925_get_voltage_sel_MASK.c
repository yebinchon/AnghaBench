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
struct max8925_regulator_info {int /*<<< orphan*/  vol_reg; int /*<<< orphan*/  i2c; } ;
struct TYPE_2__ {int n_voltages; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max8925_regulator_info* FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct max8925_regulator_info *info = FUNC1(rdev);
	unsigned char data, mask;
	int ret;

	ret = FUNC0(info->i2c, info->vol_reg);
	if (ret < 0)
		return ret;
	mask = rdev->desc->n_voltages - 1;
	data = ret & mask;

	return data;
}