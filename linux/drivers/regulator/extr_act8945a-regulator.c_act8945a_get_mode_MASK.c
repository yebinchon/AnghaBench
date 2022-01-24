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
struct act8945a_pmic {unsigned int* op_mode; } ;

/* Variables and functions */
 int ACT8945A_ID_DCDC1 ; 
 int ACT8945A_ID_MAX ; 
 unsigned int EINVAL ; 
 struct act8945a_pmic* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static unsigned int FUNC2(struct regulator_dev *rdev)
{
	struct act8945a_pmic *act8945a = FUNC0(rdev);
	int id = FUNC1(rdev);

	if (id < ACT8945A_ID_DCDC1 || id >= ACT8945A_ID_MAX)
		return -EINVAL;

	return act8945a->op_mode[id];
}