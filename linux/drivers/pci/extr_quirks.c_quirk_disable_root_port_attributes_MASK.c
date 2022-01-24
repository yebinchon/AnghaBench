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
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_NOSNOOP_EN ; 
 int PCI_EXP_DEVCTL_RELAX_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct pci_dev *root_port = FUNC1(pdev);

	if (!root_port) {
		FUNC3(pdev, "PCIe Completion erratum may cause device errors\n");
		return;
	}

	FUNC2(root_port, "Disabling No Snoop/Relaxed Ordering Attributes to avoid PCIe Completion erratum in %s\n",
		 FUNC0(&pdev->dev));
	FUNC4(root_port, PCI_EXP_DEVCTL,
					   PCI_EXP_DEVCTL_RELAX_EN |
					   PCI_EXP_DEVCTL_NOSNOOP_EN, 0);
}