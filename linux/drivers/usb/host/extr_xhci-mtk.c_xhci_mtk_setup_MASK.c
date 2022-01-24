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
struct xhci_hcd_mtk {int dummy; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 struct xhci_hcd_mtk* FUNC0 (struct usb_hcd*) ; 
 scalar_t__ FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xhci_mtk_quirks ; 
 int FUNC3 (struct xhci_hcd_mtk*) ; 
 int FUNC4 (struct xhci_hcd_mtk*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct xhci_hcd_mtk *mtk = FUNC0(hcd);
	int ret;

	if (FUNC1(hcd)) {
		ret = FUNC4(mtk);
		if (ret)
			return ret;
	}

	ret = FUNC2(hcd, xhci_mtk_quirks);
	if (ret)
		return ret;

	if (FUNC1(hcd)) {
		ret = FUNC3(mtk);
		if (ret)
			return ret;
	}

	return ret;
}