#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mdev_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct ap_matrix_mdev {TYPE_1__ group_notifier; TYPE_1__ iommu_notifier; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VFIO_GROUP_NOTIFY ; 
 unsigned long VFIO_GROUP_NOTIFY_SET_KVM ; 
 int /*<<< orphan*/  VFIO_IOMMU_NOTIFY ; 
 unsigned long VFIO_IOMMU_NOTIFY_DMA_UNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct mdev_device*) ; 
 struct ap_matrix_mdev* FUNC1 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfio_ap_mdev_group_notifier ; 
 int /*<<< orphan*/  vfio_ap_mdev_iommu_notifier ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct mdev_device *mdev)
{
	struct ap_matrix_mdev *matrix_mdev = FUNC1(mdev);
	unsigned long events;
	int ret;


	if (!FUNC3(THIS_MODULE))
		return -ENODEV;

	matrix_mdev->group_notifier.notifier_call = vfio_ap_mdev_group_notifier;
	events = VFIO_GROUP_NOTIFY_SET_KVM;

	ret = FUNC4(FUNC0(mdev), VFIO_GROUP_NOTIFY,
				     &events, &matrix_mdev->group_notifier);
	if (ret) {
		FUNC2(THIS_MODULE);
		return ret;
	}

	matrix_mdev->iommu_notifier.notifier_call = vfio_ap_mdev_iommu_notifier;
	events = VFIO_IOMMU_NOTIFY_DMA_UNMAP;
	ret = FUNC4(FUNC0(mdev), VFIO_IOMMU_NOTIFY,
				     &events, &matrix_mdev->iommu_notifier);
	if (!ret)
		return ret;

	FUNC5(FUNC0(mdev), VFIO_GROUP_NOTIFY,
				 &matrix_mdev->group_notifier);
	FUNC2(THIS_MODULE);
	return ret;
}