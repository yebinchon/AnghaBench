#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfio_pci_device {int /*<<< orphan*/  irqlock; TYPE_1__* ctx; TYPE_2__* pdev; int /*<<< orphan*/  pci_2_3; } ;
typedef  int irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int masked; } ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_pci_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct vfio_pci_device *vdev = dev_id;
	unsigned long flags;
	int ret = IRQ_NONE;

	FUNC2(&vdev->irqlock, flags);

	if (!vdev->pci_2_3) {
		FUNC0(vdev->pdev->irq);
		vdev->ctx[0].masked = true;
		ret = IRQ_HANDLED;
	} else if (!vdev->ctx[0].masked &&  /* may be shared */
		   FUNC1(vdev->pdev)) {
		vdev->ctx[0].masked = true;
		ret = IRQ_HANDLED;
	}

	FUNC3(&vdev->irqlock, flags);

	if (ret == IRQ_HANDLED)
		FUNC4(vdev, NULL);

	return ret;
}