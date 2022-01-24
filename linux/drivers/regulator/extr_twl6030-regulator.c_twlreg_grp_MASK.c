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
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_GRP ; 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	return FUNC1(FUNC0(rdev), TWL_MODULE_PM_RECEIVER,
								 VREG_GRP);
}