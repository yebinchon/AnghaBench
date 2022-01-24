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
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct idt_ntb_dev *ndev)
{
	struct pci_dev *pdev = ndev->ntb.pdev;

	/* Clean up the PCI-device private data pointer */
	FUNC3(pdev, NULL);

	/* Clear the bus master disabling the Request TLPs translation */
	FUNC1(pdev);

	/* Disable the AER capability */
	(void)FUNC2(pdev);

	FUNC0(&pdev->dev, "NT-function PCIe interface cleared");
}