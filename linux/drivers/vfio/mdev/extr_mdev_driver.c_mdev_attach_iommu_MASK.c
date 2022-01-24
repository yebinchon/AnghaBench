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
struct mdev_device {int /*<<< orphan*/  dev; } ;
struct iommu_group {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iommu_group*,int /*<<< orphan*/ *) ; 
 struct iommu_group* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct iommu_group*) ; 

__attribute__((used)) static int FUNC7(struct mdev_device *mdev)
{
	int ret;
	struct iommu_group *group;

	group = FUNC4();
	if (FUNC0(group))
		return FUNC1(group);

	ret = FUNC3(group, &mdev->dev);
	if (!ret)
		FUNC2(&mdev->dev, "MDEV: group_id = %d\n",
			 FUNC5(group));

	FUNC6(group);
	return ret;
}