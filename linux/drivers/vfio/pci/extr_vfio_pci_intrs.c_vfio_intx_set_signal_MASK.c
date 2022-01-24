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
struct vfio_pci_device {int /*<<< orphan*/  irqlock; TYPE_1__* ctx; int /*<<< orphan*/  pci_2_3; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct eventfd_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ masked; int /*<<< orphan*/  name; struct eventfd_ctx* trigger; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct eventfd_ctx*) ; 
 int FUNC1 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct eventfd_ctx* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vfio_intx_handler ; 

__attribute__((used)) static int FUNC12(struct vfio_pci_device *vdev, int fd)
{
	struct pci_dev *pdev = vdev->pdev;
	unsigned long irqflags = IRQF_SHARED;
	struct eventfd_ctx *trigger;
	unsigned long flags;
	int ret;

	if (vdev->ctx[0].trigger) {
		FUNC5(pdev->irq, vdev);
		FUNC7(vdev->ctx[0].name);
		FUNC4(vdev->ctx[0].trigger);
		vdev->ctx[0].trigger = NULL;
	}

	if (fd < 0) /* Disable only */
		return 0;

	vdev->ctx[0].name = FUNC6(GFP_KERNEL, "vfio-intx(%s)",
				      FUNC8(pdev));
	if (!vdev->ctx[0].name)
		return -ENOMEM;

	trigger = FUNC3(fd);
	if (FUNC0(trigger)) {
		FUNC7(vdev->ctx[0].name);
		return FUNC1(trigger);
	}

	vdev->ctx[0].trigger = trigger;

	if (!vdev->pci_2_3)
		irqflags = 0;

	ret = FUNC9(pdev->irq, vfio_intx_handler,
			  irqflags, vdev->ctx[0].name, vdev);
	if (ret) {
		vdev->ctx[0].trigger = NULL;
		FUNC7(vdev->ctx[0].name);
		FUNC4(trigger);
		return ret;
	}

	/*
	 * INTx disable will stick across the new irq setup,
	 * disable_irq won't.
	 */
	FUNC10(&vdev->irqlock, flags);
	if (!vdev->pci_2_3 && vdev->ctx[0].masked)
		FUNC2(pdev->irq);
	FUNC11(&vdev->irqlock, flags);

	return 0;
}