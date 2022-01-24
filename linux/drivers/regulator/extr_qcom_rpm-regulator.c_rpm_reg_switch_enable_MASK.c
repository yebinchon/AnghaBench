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
struct request_member {scalar_t__ mask; } ;
struct rpm_reg_parts {struct request_member enable_state; } ;
struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int is_enabled; int /*<<< orphan*/  lock; struct rpm_reg_parts* parts; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qcom_rpm_reg* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct qcom_rpm_reg*,struct request_member const*,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct qcom_rpm_reg *vreg = FUNC2(rdev);
	const struct rpm_reg_parts *parts = vreg->parts;
	const struct request_member *req = &parts->enable_state;
	int ret;

	if (req->mask == 0)
		return -EINVAL;

	FUNC0(&vreg->lock);
	ret = FUNC3(vreg, req, 1);
	if (!ret)
		vreg->is_enabled = 1;
	FUNC1(&vreg->lock);

	return ret;
}