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
struct vfio_pci_device {int /*<<< orphan*/  irqlock; TYPE_1__* ctx; scalar_t__ pci_2_3; int /*<<< orphan*/  virq_disabled; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int masked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void *opaque, void *unused)
{
	struct vfio_pci_device *vdev = opaque;
	struct pci_dev *pdev = vdev->pdev;
	unsigned long flags;
	int ret = 0;

	FUNC4(&vdev->irqlock, flags);

	/*
	 * Unmasking comes from ioctl or config, so again, have the
	 * physical bit follow the virtual even when not using INTx.
	 */
	if (FUNC6(!FUNC1(vdev))) {
		if (vdev->pci_2_3)
			FUNC3(pdev, 1);
	} else if (vdev->ctx[0].masked && !vdev->virq_disabled) {
		/*
		 * A pending interrupt here would immediately trigger,
		 * but we can avoid that overhead by just re-sending
		 * the interrupt to the user.
		 */
		if (vdev->pci_2_3) {
			if (!FUNC2(pdev))
				ret = 1;
		} else
			FUNC0(pdev->irq);

		vdev->ctx[0].masked = (ret > 0);
	}

	FUNC5(&vdev->irqlock, flags);

	return ret;
}