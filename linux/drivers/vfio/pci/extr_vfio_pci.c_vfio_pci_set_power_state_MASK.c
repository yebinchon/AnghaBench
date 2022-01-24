#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfio_pci_device {int /*<<< orphan*/  pm_save; scalar_t__ needs_pm_restore; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ current_state; } ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 scalar_t__ PCI_D0 ; 
 scalar_t__ PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

int FUNC5(struct vfio_pci_device *vdev, pci_power_t state)
{
	struct pci_dev *pdev = vdev->pdev;
	bool needs_restore = false, needs_save = false;
	int ret;

	if (vdev->needs_pm_restore) {
		if (pdev->current_state < PCI_D3hot && state >= PCI_D3hot) {
			FUNC2(pdev);
			needs_save = true;
		}

		if (pdev->current_state >= PCI_D3hot && state <= PCI_D0)
			needs_restore = true;
	}

	ret = FUNC3(pdev, state);

	if (!ret) {
		/* D3 might be unsupported via quirk, skip unless in D3 */
		if (needs_save && pdev->current_state >= PCI_D3hot) {
			vdev->pm_save = FUNC4(pdev);
		} else if (needs_restore) {
			FUNC0(pdev, &vdev->pm_save);
			FUNC1(pdev);
		}
	}

	return ret;
}