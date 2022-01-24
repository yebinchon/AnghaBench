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
struct scm_device {int /*<<< orphan*/  dev; } ;
struct sale {int dummy; } ;
struct chsc_scm_info {int /*<<< orphan*/  mbc; int /*<<< orphan*/  is; struct sale* scmal; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct scm_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct scm_device* FUNC3 (struct sale*) ; 
 int /*<<< orphan*/  FUNC4 (struct scm_device*,struct sale*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scm_device*,struct sale*) ; 

__attribute__((used)) static int FUNC6(struct chsc_scm_info *scm_info, size_t num)
{
	struct sale *sale, *scmal = scm_info->scmal;
	struct scm_device *scmdev;
	int ret;

	for (sale = scmal; sale < scmal + num; sale++) {
		scmdev = FUNC3(sale);
		if (scmdev) {
			FUNC5(scmdev, sale);
			/* Release reference from scm_find(). */
			FUNC2(&scmdev->dev);
			continue;
		}
		scmdev = FUNC1(sizeof(*scmdev), GFP_KERNEL);
		if (!scmdev)
			return -ENODEV;
		FUNC4(scmdev, sale, scm_info->is, scm_info->mbc);
		ret = FUNC0(&scmdev->dev);
		if (ret) {
			/* Release reference from device_initialize(). */
			FUNC2(&scmdev->dev);
			return ret;
		}
	}

	return 0;
}