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
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,...) ; 

int FUNC1(struct xhci_hcd *xhci, unsigned int trb_comp_code)
{
	if (trb_comp_code >= 224 && trb_comp_code <= 255) {
		/* Vendor defined "informational" completion code,
		 * treat as not-an-error.
		 */
		FUNC0(xhci, "Vendor defined info completion code %u\n",
				trb_comp_code);
		FUNC0(xhci, "Treating code as success.\n");
		return 1;
	}
	return 0;
}