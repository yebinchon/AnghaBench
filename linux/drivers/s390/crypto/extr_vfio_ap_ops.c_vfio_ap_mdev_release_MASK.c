#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mdev_device {int dummy; } ;
struct ap_matrix_mdev {int /*<<< orphan*/  group_notifier; int /*<<< orphan*/  iommu_notifier; TYPE_4__* kvm; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pqap_hook; } ;
struct TYPE_7__ {TYPE_1__ crypto; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VFIO_GROUP_NOTIFY ; 
 int /*<<< orphan*/  VFIO_IOMMU_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_3__* matrix_dev ; 
 int /*<<< orphan*/  FUNC2 (struct mdev_device*) ; 
 struct ap_matrix_mdev* FUNC3 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mdev_device *mdev)
{
	struct ap_matrix_mdev *matrix_mdev = FUNC3(mdev);

	FUNC5(&matrix_dev->lock);
	if (matrix_mdev->kvm) {
		FUNC0(matrix_mdev->kvm);
		matrix_mdev->kvm->arch.crypto.pqap_hook = NULL;
		FUNC7(mdev);
		FUNC1(matrix_mdev->kvm);
		matrix_mdev->kvm = NULL;
	}
	FUNC6(&matrix_dev->lock);

	FUNC8(FUNC2(mdev), VFIO_IOMMU_NOTIFY,
				 &matrix_mdev->iommu_notifier);
	FUNC8(FUNC2(mdev), VFIO_GROUP_NOTIFY,
				 &matrix_mdev->group_notifier);
	FUNC4(THIS_MODULE);
}