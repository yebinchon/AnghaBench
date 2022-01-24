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
 int /*<<< orphan*/  OHCI_QUIRK_AMD756 ; 
 int FUNC0 (struct usb_hcd*) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,char*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct ohci_hcd	*ohci = FUNC1 (hcd);

	ohci->flags = OHCI_QUIRK_AMD756;
	FUNC2 (ohci, "AMD756 erratum 4 workaround\n");

	/* also erratum 10 (suspend/resume issues) */
	return FUNC0(hcd);
}