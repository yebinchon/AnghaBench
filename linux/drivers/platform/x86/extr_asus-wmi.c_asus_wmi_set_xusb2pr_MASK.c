#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct asus_wmi {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* quirks; } ;
struct TYPE_3__ {int /*<<< orphan*/  xusb2pr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_XHCI ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  USB_INTEL_XUSB2PR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct asus_wmi *asus)
{
	struct pci_dev *xhci_pdev;
	u32 orig_ports_available;
	u32 ports_available = asus->driver->quirks->xusb2pr;

	xhci_pdev = FUNC1(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_XHCI,
			NULL);

	if (!xhci_pdev)
		return;

	FUNC2(xhci_pdev, USB_INTEL_XUSB2PR,
				&orig_ports_available);

	FUNC3(xhci_pdev, USB_INTEL_XUSB2PR,
				FUNC0(ports_available));

	FUNC4("set USB_INTEL_XUSB2PR old: 0x%04x, new: 0x%04x\n",
			orig_ports_available, ports_available);
}