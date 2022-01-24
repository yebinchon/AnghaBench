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
struct mt6380_regulator_info {unsigned int modeset_mask; int /*<<< orphan*/  modeset_reg; } ;

/* Variables and functions */
 unsigned int EINVAL ; 
#define  MT6380_REGULATOR_MODE_AUTO 129 
#define  MT6380_REGULATOR_MODE_FORCE_PWM 128 
 unsigned int REGULATOR_MODE_FAST ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 int FUNC0 (unsigned int) ; 
 struct mt6380_regulator_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC3(struct regulator_dev *rdev)
{
	unsigned int val;
	unsigned int mode;
	int ret;
	struct mt6380_regulator_info *info = FUNC1(rdev);

	ret = FUNC2(rdev->regmap, info->modeset_reg, &val);
	if (ret < 0)
		return ret;

	val &= info->modeset_mask;
	val >>= FUNC0(info->modeset_mask) - 1;

	switch (val) {
	case MT6380_REGULATOR_MODE_AUTO:
		mode = REGULATOR_MODE_NORMAL;
		break;
	case MT6380_REGULATOR_MODE_FORCE_PWM:
		mode = REGULATOR_MODE_FAST;
		break;
	default:
		return -EINVAL;
	}

	return mode;
}