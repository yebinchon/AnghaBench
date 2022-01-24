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
struct vfio_pci_device {int num_ctx; TYPE_1__* ctx; int /*<<< orphan*/  irq_type; scalar_t__ nointx; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  unmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFIO_PCI_NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_pci_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vfio_pci_device *vdev, bool msix)
{
	struct pci_dev *pdev = vdev->pdev;
	int i;

	for (i = 0; i < vdev->num_ctx; i++) {
		FUNC4(&vdev->ctx[i].unmask);
		FUNC4(&vdev->ctx[i].mask);
	}

	FUNC3(vdev, 0, vdev->num_ctx, NULL, msix);

	FUNC1(pdev);

	/*
	 * Both disable paths above use pci_intx_for_msi() to clear DisINTx
	 * via their shutdown paths.  Restore for NoINTx devices.
	 */
	if (vdev->nointx)
		FUNC2(pdev, 0);

	vdev->irq_type = VFIO_PCI_NUM_IRQS;
	vdev->num_ctx = 0;
	FUNC0(vdev->ctx);
}