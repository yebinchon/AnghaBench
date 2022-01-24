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
struct fhci_usb {struct fhci_usb* actual_frame; struct fhci_hcd* fhci; } ;
struct fhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FHCI_PORT_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct fhci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_usb*) ; 

__attribute__((used)) static void FUNC3(void *lld)
{
	struct fhci_usb *usb = lld;
	struct fhci_hcd *fhci;

	if (usb) {
		fhci = usb->fhci;
		FUNC0(fhci, FHCI_PORT_POWER_OFF);
		FUNC1(usb);
		FUNC2(usb->actual_frame);
		FUNC2(usb);
	}
}