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
struct pci_dev {int vendor; scalar_t__ class; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PCI_CLASS_SERIAL_USB_EHCI ; 
 scalar_t__ PCI_CLASS_SERIAL_USB_OHCI ; 
 scalar_t__ PCI_CLASS_SERIAL_USB_UHCI ; 
 scalar_t__ PCI_CLASS_SERIAL_USB_XHCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	/* Skip Netlogic mips SoC's internal PCI USB controller.
	 * This device does not need/support EHCI/OHCI handoff
	 */
	if (pdev->vendor == 0x184e)	/* vendor Netlogic */
		return;
	if (pdev->class != PCI_CLASS_SERIAL_USB_UHCI &&
			pdev->class != PCI_CLASS_SERIAL_USB_OHCI &&
			pdev->class != PCI_CLASS_SERIAL_USB_EHCI &&
			pdev->class != PCI_CLASS_SERIAL_USB_XHCI)
		return;

	if (FUNC2(pdev) < 0) {
		FUNC0(&pdev->dev,
			 "Can't enable PCI device, BIOS handoff failed.\n");
		return;
	}
	if (pdev->class == PCI_CLASS_SERIAL_USB_UHCI)
		FUNC5(pdev);
	else if (pdev->class == PCI_CLASS_SERIAL_USB_OHCI)
		FUNC4(pdev);
	else if (pdev->class == PCI_CLASS_SERIAL_USB_EHCI)
		FUNC3(pdev);
	else if (pdev->class == PCI_CLASS_SERIAL_USB_XHCI)
		FUNC6(pdev);
	FUNC1(pdev);
}