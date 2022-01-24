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
 int P1_GRP_6030 ; 
 int FUNC0 (int) ; 
 int TWL6030_CFG_STATE_ON ; 
 int TWL6032_SUBCLASS ; 
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_STATE ; 
 struct twlreg_info* FUNC1 (struct regulator_dev*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct twlreg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct twlreg_info	*info = FUNC1(rdev);
	int			grp = 0, val;

	if (!(FUNC2() && (info->features & TWL6032_SUBCLASS))) {
		grp = FUNC3(rdev);
		if (grp < 0)
			return grp;
		grp &= P1_GRP_6030;
	} else {
		grp = 1;
	}

	val = FUNC4(info, TWL_MODULE_PM_RECEIVER, VREG_STATE);
	val = FUNC0(val);

	return grp && (val == TWL6030_CFG_STATE_ON);
}