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
struct usb_hcd {scalar_t__ irq; TYPE_1__* driver; int /*<<< orphan*/  flags; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct usb_hcd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_HW_ACCESSIBLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct usb_hcd* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct usb_hcd*) ; 

void FUNC6(struct pci_dev *dev)
{
	struct usb_hcd		*hcd;

	hcd = FUNC2(dev);
	if (!hcd)
		return;

	if (FUNC4(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags) &&
			hcd->driver->shutdown) {
		hcd->driver->shutdown(hcd);
		if (FUNC5(hcd) && hcd->irq > 0)
			FUNC0(hcd->irq, hcd);
		FUNC1(dev);
	}
}