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
struct usb_hcd {int dummy; } ;
struct uhci_hcd {int /*<<< orphan*/ * global_suspend_mode_is_broken; int /*<<< orphan*/ * resume_detect_interrupts_are_broken; int /*<<< orphan*/ * configure_hc; int /*<<< orphan*/  check_and_reset_hc; int /*<<< orphan*/  reset_hc; scalar_t__ rh_numports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uhci_hcd*) ; 
 struct uhci_hcd* FUNC1 (struct usb_hcd*) ; 
 scalar_t__ FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  uhci_generic_check_and_reset_hc ; 
 int /*<<< orphan*/  uhci_generic_reset_hc ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct uhci_hcd *uhci = FUNC1(hcd);

	/* Probe number of ports if not already provided by DT */
	if (!uhci->rh_numports)
		uhci->rh_numports = FUNC2(hcd);

	/* Set up pointers to to generic functions */
	uhci->reset_hc = uhci_generic_reset_hc;
	uhci->check_and_reset_hc = uhci_generic_check_and_reset_hc;

	/* No special actions need to be taken for the functions below */
	uhci->configure_hc = NULL;
	uhci->resume_detect_interrupts_are_broken = NULL;
	uhci->global_suspend_mode_is_broken = NULL;

	/* Reset if the controller isn't already safely quiescent. */
	FUNC0(uhci);
	return 0;
}