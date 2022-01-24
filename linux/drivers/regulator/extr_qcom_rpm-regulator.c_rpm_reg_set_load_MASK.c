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
struct request_member {int mask; int shift; } ;
struct rpm_reg_parts {struct request_member ia; } ;
struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int /*<<< orphan*/  lock; struct rpm_reg_parts* parts; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qcom_rpm_reg* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct qcom_rpm_reg*,struct request_member const*,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, int load_uA)
{
	struct qcom_rpm_reg *vreg = FUNC2(rdev);
	const struct rpm_reg_parts *parts = vreg->parts;
	const struct request_member *req = &parts->ia;
	int load_mA = load_uA / 1000;
	int max_mA = req->mask >> req->shift;
	int ret;

	if (req->mask == 0)
		return -EINVAL;

	if (load_mA > max_mA)
		load_mA = max_mA;

	FUNC0(&vreg->lock);
	ret = FUNC3(vreg, req, load_mA);
	FUNC1(&vreg->lock);

	return ret;
}