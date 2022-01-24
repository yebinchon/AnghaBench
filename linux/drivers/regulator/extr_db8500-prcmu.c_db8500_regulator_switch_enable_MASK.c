#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dbx500_regulator_info {int is_enabled; TYPE_1__ desc; int /*<<< orphan*/  is_ramret; int /*<<< orphan*/  epod_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 
 struct dbx500_regulator_info* FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct dbx500_regulator_info *info = FUNC4(rdev);
	int ret;

	if (info == NULL)
		return -EINVAL;

	FUNC1(FUNC3(rdev), "regulator-switch-%s-enable\n",
		info->desc.name);

	ret = FUNC2(info->epod_id, info->is_ramret);
	if (ret < 0) {
		FUNC0(FUNC3(rdev),
			"regulator-switch-%s-enable: prcmu call failed\n",
			info->desc.name);
		goto out;
	}

	info->is_enabled = true;
out:
	return ret;
}