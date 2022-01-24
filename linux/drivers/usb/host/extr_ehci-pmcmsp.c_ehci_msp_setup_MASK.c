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
struct usb_hcd {int has_tt; int /*<<< orphan*/  regs; } ;
struct ehci_hcd {int big_endian_mmio; int big_endian_desc; int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int FUNC0 (struct usb_hcd*) ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC1(hcd);
	int			retval;

	ehci->big_endian_mmio = 1;
	ehci->big_endian_desc = 1;

	ehci->caps = hcd->regs;
	hcd->has_tt = 1;

	retval = FUNC0(hcd);
	if (retval)
		return retval;

	FUNC2(ehci);

	return retval;
}