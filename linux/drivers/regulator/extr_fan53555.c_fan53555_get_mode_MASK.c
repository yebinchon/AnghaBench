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
struct fan53555_device_info {unsigned int mode_mask; int /*<<< orphan*/  mode_reg; } ;

/* Variables and functions */
 unsigned int REGULATOR_MODE_FAST ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 struct fan53555_device_info* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC2(struct regulator_dev *rdev)
{
	struct fan53555_device_info *di = FUNC0(rdev);
	unsigned int val;
	int ret = 0;

	ret = FUNC1(rdev->regmap, di->mode_reg, &val);
	if (ret < 0)
		return ret;
	if (val & di->mode_mask)
		return REGULATOR_MODE_FAST;
	else
		return REGULATOR_MODE_NORMAL;
}