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
struct xhci_hcd {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,char*) ; 

__attribute__((used)) static int FUNC2(struct xhci_hcd *xhci, struct pci_dev *pdev)
{
	/*
	 * TODO: Implement finding debug ports later.
	 * TODO: see if there are any quirks that need to be added to handle
	 * new extended capabilities.
	 */

	/* PCI Memory-Write-Invalidate cycle support is optional (uncommon) */
	if (!FUNC0(pdev))
		FUNC1(xhci, "MWI active\n");

	FUNC1(xhci, "Finished xhci_pci_reinit\n");
	return 0;
}