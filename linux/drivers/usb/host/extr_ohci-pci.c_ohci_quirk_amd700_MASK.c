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
 int /*<<< orphan*/  OHCI_QUIRK_AMD_PLL ; 
 int /*<<< orphan*/  OHCI_QUIRK_AMD_PREFETCH ; 
 int /*<<< orphan*/  OHCI_QUIRK_GLOBAL_SUSPEND ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd)
{
	struct ohci_hcd *ohci = FUNC0(hcd);

	if (FUNC3())
		ohci->flags |= OHCI_QUIRK_AMD_PLL;

	/* SB800 needs pre-fetch fix */
	if (FUNC2()) {
		ohci->flags |= OHCI_QUIRK_AMD_PREFETCH;
		FUNC1(ohci, "enabled AMD prefetch quirk\n");
	}

	ohci->flags |= OHCI_QUIRK_GLOBAL_SUSPEND;
	return 0;
}