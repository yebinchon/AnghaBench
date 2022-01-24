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
struct ohci_hcd {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_QUIRK_QEMU ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,char*) ; 

__attribute__((used)) static int FUNC2(struct usb_hcd *hcd)
{
	struct ohci_hcd *ohci = FUNC0(hcd);

	ohci->flags |= OHCI_QUIRK_QEMU;
	FUNC1(ohci, "enabled qemu quirk\n");
	return 0;
}