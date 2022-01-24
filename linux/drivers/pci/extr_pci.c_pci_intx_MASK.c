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
typedef  int u16 ;
struct pci_devres {int restore_intx; int orig_intx; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 struct pci_devres* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct pci_dev *pdev, int enable)
{
	u16 pci_command, new;

	FUNC1(pdev, PCI_COMMAND, &pci_command);

	if (enable)
		new = pci_command & ~PCI_COMMAND_INTX_DISABLE;
	else
		new = pci_command | PCI_COMMAND_INTX_DISABLE;

	if (new != pci_command) {
		struct pci_devres *dr;

		FUNC2(pdev, PCI_COMMAND, new);

		dr = FUNC0(pdev);
		if (dr && !dr->restore_intx) {
			dr->restore_intx = 1;
			dr->orig_intx = !enable;
		}
	}
}