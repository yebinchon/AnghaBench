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
struct twlreg_info {int features; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int TWL6030_CFG_STATE_GRP_SHIFT ; 
 int TWL6030_CFG_STATE_ON ; 
 int TWL6030_CFG_STATE_SLEEP ; 
 int TWL6032_SUBCLASS ; 
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_STATE ; 
 struct twlreg_info* FUNC0 (struct regulator_dev*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct twlreg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, unsigned mode)
{
	struct twlreg_info	*info = FUNC0(rdev);
	int grp = 0;
	int val;

	if (!(FUNC1() && (info->features & TWL6032_SUBCLASS)))
		grp = FUNC2(rdev);

	if (grp < 0)
		return grp;

	/* Compose the state register settings */
	val = grp << TWL6030_CFG_STATE_GRP_SHIFT;
	/* We can only set the mode through state machine commands... */
	switch (mode) {
	case REGULATOR_MODE_NORMAL:
		val |= TWL6030_CFG_STATE_ON;
		break;
	case REGULATOR_MODE_STANDBY:
		val |= TWL6030_CFG_STATE_SLEEP;
		break;

	default:
		return -EINVAL;
	}

	return FUNC3(info, TWL_MODULE_PM_RECEIVER, VREG_STATE, val);
}