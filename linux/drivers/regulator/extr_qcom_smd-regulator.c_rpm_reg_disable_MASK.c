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
struct qcom_rpm_reg {int is_enabled; int enabled_updated; } ;

/* Variables and functions */
 struct qcom_rpm_reg* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct qcom_rpm_reg*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct qcom_rpm_reg *vreg = FUNC0(rdev);
	int ret;

	vreg->is_enabled = 0;
	vreg->enabled_updated = 1;

	ret = FUNC1(vreg);
	if (ret)
		vreg->is_enabled = 1;

	return ret;
}