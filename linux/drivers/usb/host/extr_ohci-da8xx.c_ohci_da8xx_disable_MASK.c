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
struct da8xx_ohci_hcd {int /*<<< orphan*/  usb11_clk; int /*<<< orphan*/  usb11_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct da8xx_ohci_hcd* FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC4(struct usb_hcd *hcd)
{
	struct da8xx_ohci_hcd *da8xx_ohci = FUNC3(hcd);

	FUNC2(da8xx_ohci->usb11_phy);
	FUNC1(da8xx_ohci->usb11_phy);
	FUNC0(da8xx_ohci->usb11_clk);
}