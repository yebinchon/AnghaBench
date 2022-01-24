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
struct uhci_hcd {int dummy; } ;
struct pci_dev {scalar_t__ vendor; } ;

/* Variables and functions */
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  USBLEGSUP ; 
 int /*<<< orphan*/  USBLEGSUP_DEFAULT ; 
 int /*<<< orphan*/  USBRES_INTEL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct uhci_hcd *uhci)
{
	struct pci_dev *pdev = FUNC2(FUNC3(uhci));

	/* Enable PIRQ */
	FUNC1(pdev, USBLEGSUP, USBLEGSUP_DEFAULT);

	/* Disable platform-specific non-PME# wakeup */
	if (pdev->vendor == PCI_VENDOR_ID_INTEL)
		FUNC0(pdev, USBRES_INTEL, 0);
}