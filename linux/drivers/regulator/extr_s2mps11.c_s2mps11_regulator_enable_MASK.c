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
struct s2mps11_info {int dev_type; int /*<<< orphan*/  suspend_state; int /*<<< orphan*/ * ext_control_gpiod; } ;
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {unsigned int enable_mask; int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  S2MPS11X 131 
#define  S2MPS13X 130 
#define  S2MPS14X 129 
 unsigned int S2MPS14_ENABLE_EXT_CONTROL ; 
 unsigned int S2MPS14_ENABLE_SUSPEND ; 
#define  S2MPU02 128 
 unsigned int S2MPU02_ENABLE_SUSPEND ; 
 struct s2mps11_info* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct s2mps11_info *s2mps11 = FUNC0(rdev);
	int rdev_id = FUNC1(rdev);
	unsigned int val;

	switch (s2mps11->dev_type) {
	case S2MPS11X:
		if (FUNC3(rdev_id, s2mps11->suspend_state))
			val = S2MPS14_ENABLE_SUSPEND;
		else
			val = rdev->desc->enable_mask;
		break;
	case S2MPS13X:
	case S2MPS14X:
		if (FUNC3(rdev_id, s2mps11->suspend_state))
			val = S2MPS14_ENABLE_SUSPEND;
		else if (s2mps11->ext_control_gpiod[rdev_id])
			val = S2MPS14_ENABLE_EXT_CONTROL;
		else
			val = rdev->desc->enable_mask;
		break;
	case S2MPU02:
		if (FUNC3(rdev_id, s2mps11->suspend_state))
			val = S2MPU02_ENABLE_SUSPEND;
		else
			val = rdev->desc->enable_mask;
		break;
	default:
		return -EINVAL;
	}

	return FUNC2(rdev->regmap, rdev->desc->enable_reg,
			rdev->desc->enable_mask, val);
}