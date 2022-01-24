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
struct mt6323_regulator_info {unsigned int modeset_mask; int /*<<< orphan*/  modeset_reg; TYPE_1__ desc; } ;

/* Variables and functions */
 unsigned int EINVAL ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 unsigned int REGULATOR_MODE_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 struct mt6323_regulator_info* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC4(struct regulator_dev *rdev)
{
	unsigned int val;
	unsigned int mode;
	int ret;
	struct mt6323_regulator_info *info = FUNC2(rdev);

	if (!info->modeset_mask) {
		FUNC0(&rdev->dev, "regulator %s doesn't support get_mode\n",
			info->desc.name);
		return -EINVAL;
	}

	ret = FUNC3(rdev->regmap, info->modeset_reg, &val);
	if (ret < 0)
		return ret;

	val &= info->modeset_mask;
	val >>= FUNC1(info->modeset_mask) - 1;

	if (val & 0x1)
		mode = REGULATOR_MODE_STANDBY;
	else
		mode = REGULATOR_MODE_NORMAL;

	return mode;
}