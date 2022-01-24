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
struct vfio_pci_device {int /*<<< orphan*/  irqlock; TYPE_1__* ctx; scalar_t__ pci_2_3; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int masked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct vfio_pci_device *vdev)
{
	struct pci_dev *pdev = vdev->pdev;
	unsigned long flags;

	FUNC3(&vdev->irqlock, flags);

	/*
	 * Masking can come from interrupt, ioctl, or config space
	 * via INTx disable.  The latter means this can get called
	 * even when not using intx delivery.  In this case, just
	 * try to have the physical bit follow the virtual bit.
	 */
	if (FUNC5(!FUNC1(vdev))) {
		if (vdev->pci_2_3)
			FUNC2(pdev, 0);
	} else if (!vdev->ctx[0].masked) {
		/*
		 * Can't use check_and_mask here because we always want to
		 * mask, not just when something is pending.
		 */
		if (vdev->pci_2_3)
			FUNC2(pdev, 0);
		else
			FUNC0(pdev->irq);

		vdev->ctx[0].masked = true;
	}

	FUNC4(&vdev->irqlock, flags);
}