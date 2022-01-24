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
typedef  int u32 ;
struct xhci_hcd {int dummy; } ;
struct usb_hcd {scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct usb_hcd* FUNC3 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci)
{
	struct usb_hcd *hcd = FUNC3(xhci);
	u32 pll_lock_check;
	u32 retry_count = 4;

	do {
		/* Assert PHY reset */
		FUNC2(0x6F, hcd->regs + 0x1048);
		FUNC1(10);
		/* De-assert the PHY reset */
		FUNC2(0x7F, hcd->regs + 0x1048);
		FUNC1(200);
		pll_lock_check = FUNC0(hcd->regs + 0x1070);
	} while (!(pll_lock_check & 0x1) && --retry_count);
}