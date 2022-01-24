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
struct twlreg_info {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int P1_GRP_4030 ; 
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_GRP ; 
 struct twlreg_info* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct twlreg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct twlreg_info	*info = FUNC0(rdev);
	int			grp;
	int			ret;

	grp = FUNC1(rdev);
	if (grp < 0)
		return grp;

	grp |= P1_GRP_4030;

	ret = FUNC2(info, TWL_MODULE_PM_RECEIVER, VREG_GRP, grp);

	return ret;
}