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
struct xhci_hcd {int imod_interval; scalar_t__ sbrn; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XHCI_SBRN_OFFSET ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,unsigned int) ; 
 int FUNC5 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xhci_pci_quirks ; 
 int FUNC6 (struct xhci_hcd*,struct pci_dev*) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd)
{
	struct xhci_hcd		*xhci;
	struct pci_dev		*pdev = FUNC2(hcd->self.controller);
	int			retval;

	xhci = FUNC0(hcd);
	if (!xhci->sbrn)
		FUNC1(pdev, XHCI_SBRN_OFFSET, &xhci->sbrn);

	/* imod_interval is the interrupt moderation value in nanoseconds. */
	xhci->imod_interval = 40000;

	retval = FUNC5(hcd, xhci_pci_quirks);
	if (retval)
		return retval;

	if (!FUNC3(hcd))
		return 0;

	FUNC4(xhci, "Got SBRN %u\n", (unsigned int) xhci->sbrn);

	/* Find any debug ports */
	return FUNC6(xhci, pdev);
}