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
struct regulator_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct mt6323_regulator_info {int /*<<< orphan*/  modeset_mask; int /*<<< orphan*/  modeset_reg; TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int MT6323_LDO_MODE_LP ; 
 int MT6323_LDO_MODE_NORMAL ; 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mt6323_regulator_info* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, unsigned int mode)
{
	int ret, val = 0;
	struct mt6323_regulator_info *info = FUNC2(rdev);

	if (!info->modeset_mask) {
		FUNC0(&rdev->dev, "regulator %s doesn't support set_mode\n",
			info->desc.name);
		return -EINVAL;
	}

	switch (mode) {
	case REGULATOR_MODE_STANDBY:
		val = MT6323_LDO_MODE_LP;
		break;
	case REGULATOR_MODE_NORMAL:
		val = MT6323_LDO_MODE_NORMAL;
		break;
	default:
		return -EINVAL;
	}

	val <<= FUNC1(info->modeset_mask) - 1;

	ret = FUNC3(rdev->regmap, info->modeset_reg,
				  info->modeset_mask, val);

	return ret;
}