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
struct xhci_hcd {int quirks; int /*<<< orphan*/ * shared_hcd; int /*<<< orphan*/  xhc_state; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int XHCI_DEFAULT_PM_RUNTIME_ALLOW ; 
 int XHCI_SPURIOUS_WAKEUP ; 
 int /*<<< orphan*/  XHCI_STATE_REMOVING ; 
 struct xhci_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	struct xhci_hcd *xhci;

	xhci = FUNC0(FUNC1(dev));
	xhci->xhc_state |= XHCI_STATE_REMOVING;

	if (xhci->quirks & XHCI_DEFAULT_PM_RUNTIME_ALLOW)
		FUNC3(&dev->dev);

	if (xhci->shared_hcd) {
		FUNC6(xhci->shared_hcd);
		FUNC5(xhci->shared_hcd);
		xhci->shared_hcd = NULL;
	}

	/* Workaround for spurious wakeups at shutdown with HSW */
	if (xhci->quirks & XHCI_SPURIOUS_WAKEUP)
		FUNC2(dev, PCI_D3hot);

	FUNC4(dev);
}