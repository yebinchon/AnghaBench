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
struct TYPE_2__ {scalar_t__ controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ohci_hcd {int /*<<< orphan*/  hc_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_CTRL_RWC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  ohci_pci_quirks ; 
 int FUNC2 (struct usb_hcd*) ; 
 struct pci_device_id* FUNC3 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 struct pci_dev* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5 (struct usb_hcd *hcd)
{
	struct ohci_hcd	*ohci = FUNC1 (hcd);
	struct pci_dev *pdev = FUNC4(hcd->self.controller);
	int ret = 0;

	if (hcd->self.controller) {
		const struct pci_device_id *quirk_id;

		quirk_id = FUNC3(ohci_pci_quirks, pdev);
		if (quirk_id != NULL) {
			int (*quirk)(struct usb_hcd *ohci);
			quirk = (void *)quirk_id->driver_data;
			ret = quirk(hcd);
		}
	}

	if (ret == 0)
		ret = FUNC2(hcd);
	/*
	* After ohci setup RWC may not be set for add-in PCI cards.
	* This transfers PCI PM wakeup capabilities.
	*/
	if (FUNC0(&pdev->dev))
		ohci->hc_control |= OHCI_CTRL_RWC;
	return ret;
}