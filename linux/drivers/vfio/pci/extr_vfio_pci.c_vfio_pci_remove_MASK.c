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
struct vfio_pci_device {struct vfio_pci_device* pm_save; int /*<<< orphan*/  ioeventfds_lock; struct vfio_pci_device* region; int /*<<< orphan*/  reflck; } ;
struct TYPE_3__ {int /*<<< orphan*/  iommu_group; } ;
struct pci_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int VGA_RSRC_LEGACY_IO ; 
 int VGA_RSRC_LEGACY_MEM ; 
 int VGA_RSRC_NORMAL_IO ; 
 int VGA_RSRC_NORMAL_MEM ; 
 int /*<<< orphan*/  disable_idle_d3 ; 
 int /*<<< orphan*/  FUNC0 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vfio_pci_device* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vfio_pci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct vfio_pci_device *vdev;

	vdev = FUNC2(&pdev->dev);
	if (!vdev)
		return;

	FUNC5(vdev->reflck);

	FUNC3(pdev->dev.iommu_group, &pdev->dev);
	FUNC0(vdev->region);
	FUNC1(&vdev->ioeventfds_lock);

	if (!disable_idle_d3)
		FUNC6(vdev, PCI_D0);

	FUNC0(vdev->pm_save);
	FUNC0(vdev);

	if (FUNC4(pdev)) {
		FUNC7(pdev, NULL, NULL, NULL);
		FUNC8(pdev,
				VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM |
				VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM);
	}
}