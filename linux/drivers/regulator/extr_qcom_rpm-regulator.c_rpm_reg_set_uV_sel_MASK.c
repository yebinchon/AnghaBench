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
struct rpm_reg_parts {struct request_member uV; } ;
struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int uV; int /*<<< orphan*/  lock; scalar_t__ is_enabled; struct rpm_reg_parts* parts; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qcom_rpm_reg* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*,unsigned int) ; 
 int FUNC4 (struct qcom_rpm_reg*,struct request_member const*,int) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev,
			      unsigned selector)
{
	struct qcom_rpm_reg *vreg = FUNC2(rdev);
	const struct rpm_reg_parts *parts = vreg->parts;
	const struct request_member *req = &parts->uV;
	int ret = 0;
	int uV;

	if (req->mask == 0)
		return -EINVAL;

	uV = FUNC3(rdev, selector);
	if (uV < 0)
		return uV;

	FUNC0(&vreg->lock);
	if (vreg->is_enabled)
		ret = FUNC4(vreg, req, uV);

	if (!ret)
		vreg->uV = uV;
	FUNC1(&vreg->lock);

	return ret;
}