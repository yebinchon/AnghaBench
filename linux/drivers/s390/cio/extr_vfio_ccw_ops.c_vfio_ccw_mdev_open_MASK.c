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
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct vfio_ccw_private {TYPE_1__ nb; } ;
struct mdev_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFIO_IOMMU_NOTIFY ; 
 unsigned long VFIO_IOMMU_NOTIFY_DMA_UNMAP ; 
 struct vfio_ccw_private* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdev_device*) ; 
 int /*<<< orphan*/  vfio_ccw_mdev_notifier ; 
 int FUNC3 (struct vfio_ccw_private*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct mdev_device *mdev)
{
	struct vfio_ccw_private *private =
		FUNC0(FUNC2(mdev));
	unsigned long events = VFIO_IOMMU_NOTIFY_DMA_UNMAP;
	int ret;

	private->nb.notifier_call = vfio_ccw_mdev_notifier;

	ret = FUNC4(FUNC1(mdev), VFIO_IOMMU_NOTIFY,
				     &events, &private->nb);
	if (ret)
		return ret;

	ret = FUNC3(private);
	if (ret)
		FUNC5(FUNC1(mdev), VFIO_IOMMU_NOTIFY,
					 &private->nb);
	return ret;
}