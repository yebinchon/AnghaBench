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
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_VOLTAGE_SMPS ; 
 struct twlreg_info* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct twlreg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
				       unsigned int selector)
{
	struct twlreg_info *info = FUNC0(rdev);

	return FUNC1(info, TWL_MODULE_PM_RECEIVER, VREG_VOLTAGE_SMPS,
			    selector);
}