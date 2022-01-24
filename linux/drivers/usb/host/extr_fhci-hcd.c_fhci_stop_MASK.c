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
struct fhci_hcd {int /*<<< orphan*/ * usb_lld; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fhci_hcd* FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd)
{
	struct fhci_hcd *fhci = FUNC4(hcd);

	FUNC2(fhci->usb_lld);
	FUNC1(fhci);

	FUNC3(fhci->usb_lld);
	fhci->usb_lld = NULL;
	FUNC0(fhci);
}