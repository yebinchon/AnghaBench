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
struct fan53555_device_info {int /*<<< orphan*/  mode_mask; int /*<<< orphan*/  vol_reg; int /*<<< orphan*/  mode_reg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  REGULATOR_MODE_FAST 129 
#define  REGULATOR_MODE_NORMAL 128 
 struct fan53555_device_info* FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, unsigned int mode)
{
	struct fan53555_device_info *di = FUNC0(rdev);

	switch (mode) {
	case REGULATOR_MODE_FAST:
		FUNC1(rdev->regmap, di->mode_reg,
				   di->mode_mask, di->mode_mask);
		break;
	case REGULATOR_MODE_NORMAL:
		FUNC1(rdev->regmap, di->vol_reg, di->mode_mask, 0);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}