#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct vfio_pci_device {TYPE_1__* pdev; scalar_t__ nointx; } ;
struct TYPE_4__ {scalar_t__ msix_cap; scalar_t__ msi_cap; scalar_t__ is_virtfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_VFIO_PCI_INTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_INTERRUPT_PIN ; 
 scalar_t__ PCI_MSIX_FLAGS ; 
 int PCI_MSIX_FLAGS_QSIZE ; 
 scalar_t__ PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_QMASK ; 
 int VFIO_PCI_ERR_IRQ_INDEX ; 
 int VFIO_PCI_INTX_IRQ_INDEX ; 
 int VFIO_PCI_MSIX_IRQ_INDEX ; 
 int VFIO_PCI_MSI_IRQ_INDEX ; 
 int VFIO_PCI_REQ_IRQ_INDEX ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC4(struct vfio_pci_device *vdev, int irq_type)
{
	if (irq_type == VFIO_PCI_INTX_IRQ_INDEX) {
		u8 pin;

		if (!FUNC0(CONFIG_VFIO_PCI_INTX) ||
		    vdev->nointx || vdev->pdev->is_virtfn)
			return 0;

		FUNC2(vdev->pdev, PCI_INTERRUPT_PIN, &pin);

		return pin ? 1 : 0;
	} else if (irq_type == VFIO_PCI_MSI_IRQ_INDEX) {
		u8 pos;
		u16 flags;

		pos = vdev->pdev->msi_cap;
		if (pos) {
			FUNC3(vdev->pdev,
					     pos + PCI_MSI_FLAGS, &flags);
			return 1 << ((flags & PCI_MSI_FLAGS_QMASK) >> 1);
		}
	} else if (irq_type == VFIO_PCI_MSIX_IRQ_INDEX) {
		u8 pos;
		u16 flags;

		pos = vdev->pdev->msix_cap;
		if (pos) {
			FUNC3(vdev->pdev,
					     pos + PCI_MSIX_FLAGS, &flags);

			return (flags & PCI_MSIX_FLAGS_QSIZE) + 1;
		}
	} else if (irq_type == VFIO_PCI_ERR_IRQ_INDEX) {
		if (FUNC1(vdev->pdev))
			return 1;
	} else if (irq_type == VFIO_PCI_REQ_IRQ_INDEX) {
		return 1;
	}

	return 0;
}