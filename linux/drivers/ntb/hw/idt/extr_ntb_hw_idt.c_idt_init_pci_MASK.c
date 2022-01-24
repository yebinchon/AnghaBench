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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct pci_dev* pdev; } ;
struct idt_ntb_dev {int /*<<< orphan*/  cfgspc; TYPE_1__ ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NTB_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC17(struct idt_ntb_dev *ndev)
{
	struct pci_dev *pdev = ndev->ntb.pdev;
	int ret;

	/* Initialize the bit mask of PCI/NTB DMA */
	ret = FUNC11(pdev, FUNC0(64));
	if (ret != 0) {
		ret = FUNC11(pdev, FUNC0(32));
		if (ret != 0) {
			FUNC2(&pdev->dev, "Failed to set DMA bit mask\n");
			return ret;
		}
		FUNC3(&pdev->dev, "Cannot set DMA highmem bit mask\n");
	}
	ret = FUNC10(pdev, FUNC0(64));
	if (ret != 0) {
		ret = FUNC10(pdev, FUNC0(32));
		if (ret != 0) {
			FUNC2(&pdev->dev,
				"Failed to set consistent DMA bit mask\n");
			return ret;
		}
		FUNC3(&pdev->dev,
			"Cannot set consistent DMA highmem bit mask\n");
	}
	ret = FUNC4(&ndev->ntb.dev,
					   FUNC5(&pdev->dev));
	if (ret != 0) {
		FUNC2(&pdev->dev, "Failed to set NTB device DMA bit mask\n");
		return ret;
	}

	/*
	 * Enable the device advanced error reporting. It's not critical to
	 * have AER disabled in the kernel.
	 */
	ret = FUNC9(pdev);
	if (ret != 0)
		FUNC3(&pdev->dev, "PCIe AER capability disabled\n");
	else /* Cleanup uncorrectable error status before getting to init */
		FUNC6(pdev);

	/* First enable the PCI device */
	ret = FUNC14(pdev);
	if (ret != 0) {
		FUNC2(&pdev->dev, "Failed to enable PCIe device\n");
		goto err_disable_aer;
	}

	/*
	 * Enable the bus mastering, which effectively enables MSI IRQs and
	 * Request TLPs translation
	 */
	FUNC13(pdev);

	/* Request all BARs resources and map BAR0 only */
	ret = FUNC15(pdev, 1, NTB_NAME);
	if (ret != 0) {
		FUNC2(&pdev->dev, "Failed to request resources\n");
		goto err_clear_master;
	}

	/* Retrieve virtual address of BAR0 - PCI configuration space */
	ndev->cfgspc = FUNC16(pdev)[0];

	/* Put the IDT driver data pointer to the PCI-device private pointer */
	FUNC12(pdev, ndev);

	FUNC1(&pdev->dev, "NT-function PCIe interface initialized");

	return 0;

err_clear_master:
	FUNC7(pdev);
err_disable_aer:
	(void)FUNC8(pdev);

	return ret;
}