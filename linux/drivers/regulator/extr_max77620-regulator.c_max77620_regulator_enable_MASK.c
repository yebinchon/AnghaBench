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
struct max77620_regulator {scalar_t__* active_fps_src; int /*<<< orphan*/ * enable_power_mode; } ;

/* Variables and functions */
 scalar_t__ MAX77620_FPS_SRC_NONE ; 
 int FUNC0 (struct max77620_regulator*,int /*<<< orphan*/ ,int) ; 
 struct max77620_regulator* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct max77620_regulator *pmic = FUNC1(rdev);
	int id = FUNC2(rdev);

	if (pmic->active_fps_src[id] != MAX77620_FPS_SRC_NONE)
		return 0;

	return FUNC0(pmic,
			pmic->enable_power_mode[id], id);
}