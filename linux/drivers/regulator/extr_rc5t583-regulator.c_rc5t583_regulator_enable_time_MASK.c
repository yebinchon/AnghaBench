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
struct rc5t583_regulator_info {int /*<<< orphan*/  enable_uv_per_us; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct rc5t583_regulator_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct rc5t583_regulator_info *reg_info = FUNC1(rdev);
	int vsel = FUNC2(rdev);
	int curr_uV = FUNC3(rdev, vsel);

	return FUNC0(curr_uV, reg_info->enable_uv_per_us);
}