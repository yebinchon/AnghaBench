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
struct xhci_hcd_histb {int dummy; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 struct xhci_hcd_histb* FUNC0 (struct usb_hcd*) ; 
 scalar_t__ FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xhci_hcd_histb*) ; 
 int /*<<< orphan*/  xhci_histb_quirks ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd)
{
	struct xhci_hcd_histb *histb = FUNC0(hcd);
	int ret;

	if (FUNC1(hcd)) {
		ret = FUNC3(histb);
		if (ret)
			return ret;
	}

	return FUNC2(hcd, xhci_histb_quirks);
}