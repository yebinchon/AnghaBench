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
typedef  int u_short ;
struct sym_chip {int features; } ;
struct pci_dev {int /*<<< orphan*/  revision; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FE_66MHZ ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_66MHZ ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct sym_chip* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	u_short status_reg;
	struct sym_chip *chip;

	chip = FUNC2(pdev->device, pdev->revision);

	/* Work around for errant bit in 895A, in a fashion
	 * similar to what is done in sym_set_workarounds().
	 */
	FUNC0(pdev, PCI_STATUS, &status_reg);
	if (!(chip->features & FE_66MHZ) && (status_reg & PCI_STATUS_66MHZ)) {
		status_reg = PCI_STATUS_66MHZ;
		FUNC1(pdev, PCI_STATUS, status_reg);
		FUNC0(pdev, PCI_STATUS, &status_reg);
	}
}