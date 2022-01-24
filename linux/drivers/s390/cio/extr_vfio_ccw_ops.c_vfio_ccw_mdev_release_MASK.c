#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfio_ccw_private {scalar_t__ state; int num_regions; TYPE_2__* region; int /*<<< orphan*/  nb; int /*<<< orphan*/  cp; } ;
struct mdev_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* release ) (struct vfio_ccw_private*,TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ VFIO_CCW_STATE_NOT_OPER ; 
 scalar_t__ VFIO_CCW_STATE_STANDBY ; 
 int /*<<< orphan*/  VFIO_IOMMU_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vfio_ccw_private* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_ccw_private*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mdev_device *mdev)
{
	struct vfio_ccw_private *private =
		FUNC1(FUNC4(mdev));
	int i;

	if ((private->state != VFIO_CCW_STATE_NOT_OPER) &&
	    (private->state != VFIO_CCW_STATE_STANDBY)) {
		if (!FUNC6(mdev))
			private->state = VFIO_CCW_STATE_STANDBY;
		/* The state will be NOT_OPER on error. */
	}

	FUNC0(&private->cp);
	FUNC7(FUNC3(mdev), VFIO_IOMMU_NOTIFY,
				 &private->nb);

	for (i = 0; i < private->num_regions; i++)
		private->region[i].ops->release(private, &private->region[i]);

	private->num_regions = 0;
	FUNC2(private->region);
	private->region = NULL;
}