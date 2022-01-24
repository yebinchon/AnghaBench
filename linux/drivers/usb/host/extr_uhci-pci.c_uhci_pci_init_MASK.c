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
struct usb_hcd {scalar_t__ rsrc_start; } ;
struct uhci_hcd {unsigned long io_addr; int oc_low; int wait_for_hp; int /*<<< orphan*/  global_suspend_mode_is_broken; int /*<<< orphan*/  resume_detect_interrupts_are_broken; int /*<<< orphan*/  configure_hc; int /*<<< orphan*/  check_and_reset_hc; int /*<<< orphan*/  reset_hc; int /*<<< orphan*/  rh_numports; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;

/* Variables and functions */
 scalar_t__ PCI_VENDOR_ID_HP ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 scalar_t__ PCI_VENDOR_ID_VIA ; 
 int /*<<< orphan*/  FUNC0 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct uhci_hcd* FUNC2 (struct usb_hcd*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  uhci_pci_check_and_reset_hc ; 
 int /*<<< orphan*/  uhci_pci_configure_hc ; 
 int /*<<< orphan*/  uhci_pci_global_suspend_mode_is_broken ; 
 int /*<<< orphan*/  uhci_pci_reset_hc ; 
 int /*<<< orphan*/  uhci_pci_resume_detect_interrupts_are_broken ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd)
{
	struct uhci_hcd *uhci = FUNC2(hcd);

	uhci->io_addr = (unsigned long) hcd->rsrc_start;

	uhci->rh_numports = FUNC4(hcd);

	/* Intel controllers report the OverCurrent bit active on.
	 * VIA controllers report it active off, so we'll adjust the
	 * bit value.  (It's not standardized in the UHCI spec.)
	 */
	if (FUNC3(FUNC5(uhci))->vendor == PCI_VENDOR_ID_VIA)
		uhci->oc_low = 1;

	/* HP's server management chip requires a longer port reset delay. */
	if (FUNC3(FUNC5(uhci))->vendor == PCI_VENDOR_ID_HP)
		uhci->wait_for_hp = 1;

	/* Intel controllers use non-PME wakeup signalling */
	if (FUNC3(FUNC5(uhci))->vendor == PCI_VENDOR_ID_INTEL)
		FUNC1(FUNC5(uhci), true);

	/* Set up pointers to PCI-specific functions */
	uhci->reset_hc = uhci_pci_reset_hc;
	uhci->check_and_reset_hc = uhci_pci_check_and_reset_hc;
	uhci->configure_hc = uhci_pci_configure_hc;
	uhci->resume_detect_interrupts_are_broken =
		uhci_pci_resume_detect_interrupts_are_broken;
	uhci->global_suspend_mode_is_broken =
		uhci_pci_global_suspend_mode_is_broken;


	/* Kick BIOS off this hardware and reset if the controller
	 * isn't already safely quiescent.
	 */
	FUNC0(uhci);
	return 0;
}