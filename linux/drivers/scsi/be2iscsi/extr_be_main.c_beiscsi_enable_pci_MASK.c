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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pcidev)
{
	int ret;

	ret = FUNC4(pcidev);
	if (ret) {
		FUNC1(&pcidev->dev,
			"beiscsi_enable_pci - enable device failed\n");
		return ret;
	}

	ret = FUNC6(pcidev, DRV_NAME);
	if (ret) {
		FUNC1(&pcidev->dev,
				"beiscsi_enable_pci - request region failed\n");
		goto pci_dev_disable;
	}

	FUNC7(pcidev);
	ret = FUNC2(&pcidev->dev, FUNC0(64));
	if (ret) {
		ret = FUNC2(&pcidev->dev, FUNC0(32));
		if (ret) {
			FUNC1(&pcidev->dev, "Could not set PCI DMA Mask\n");
			goto pci_region_release;
		}
	}
	return 0;

pci_region_release:
	FUNC5(pcidev);
pci_dev_disable:
	FUNC3(pcidev);

	return ret;
}