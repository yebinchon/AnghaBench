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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int PCI_CLASS_DEVICE ; 
 int /*<<< orphan*/  PCI_CLASS_STORAGE_SATA_AHCI ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	/* set SBX00/Hudson-2 SATA in IDE mode to AHCI mode */
	u8 tmp;

	FUNC1(pdev, PCI_CLASS_DEVICE, &tmp);
	if (tmp == 0x01) {
		FUNC1(pdev, 0x40, &tmp);
		FUNC2(pdev, 0x40, tmp|1);
		FUNC2(pdev, 0x9, 1);
		FUNC2(pdev, 0xa, 6);
		FUNC2(pdev, 0x40, tmp);

		pdev->class = PCI_CLASS_STORAGE_SATA_AHCI;
		FUNC0(pdev, "set SATA to AHCI mode\n");
	}
}