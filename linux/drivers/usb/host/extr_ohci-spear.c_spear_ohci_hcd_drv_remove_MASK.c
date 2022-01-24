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
struct spear_ohci {scalar_t__ clk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct usb_hcd* FUNC1 (struct platform_device*) ; 
 struct spear_ohci* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC1(pdev);
	struct spear_ohci *sohci_p = FUNC2(hcd);

	FUNC4(hcd);
	if (sohci_p->clk)
		FUNC0(sohci_p->clk);

	FUNC3(hcd);
	return 0;
}