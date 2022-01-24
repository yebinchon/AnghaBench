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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_VOLTAGE_SMPS_4030 ; 
 struct twlreg_info* FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct twlreg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct regulator_dev *rdev, int min_uV, int max_uV,
			unsigned *selector)
{
	struct twlreg_info *info = FUNC1(rdev);
	int vsel = FUNC0(min_uV - 600000, 12500);

	FUNC2(info, TWL_MODULE_PM_RECEIVER, VREG_VOLTAGE_SMPS_4030, vsel);

	return 0;
}