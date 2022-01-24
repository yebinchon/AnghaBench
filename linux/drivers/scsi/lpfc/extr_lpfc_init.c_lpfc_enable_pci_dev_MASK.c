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
struct pci_dev {int needs_freset; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC8(struct lpfc_hba *phba)
{
	struct pci_dev *pdev;

	/* Obtain PCI device reference */
	if (!phba->pcidev)
		goto out_error;
	else
		pdev = phba->pcidev;
	/* Enable PCI device */
	if (FUNC2(pdev))
		goto out_error;
	/* Request PCI resource for the device */
	if (FUNC4(pdev, LPFC_DRIVER_NAME))
		goto out_disable_device;
	/* Set up device as PCI master and save state for EEH */
	FUNC6(pdev);
	FUNC7(pdev);
	FUNC5(pdev);

	/* PCIe EEH recovery on powerpc platforms needs fundamental reset */
	if (FUNC3(pdev))
		pdev->needs_freset = 1;

	return 0;

out_disable_device:
	FUNC1(pdev);
out_error:
	FUNC0(phba, KERN_ERR, LOG_INIT,
			"1401 Failed to enable pci device\n");
	return -ENODEV;
}