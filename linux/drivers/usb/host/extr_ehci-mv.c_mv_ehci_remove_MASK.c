#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {scalar_t__ rh_registered; } ;
struct platform_device {int dummy; } ;
struct ehci_hcd_mv {scalar_t__ mode; int /*<<< orphan*/  (* set_vbus ) (int /*<<< orphan*/ ) ;TYPE_1__* otg; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ MV_USB_MODE_HOST ; 
 struct ehci_hcd_mv* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd_mv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC4(pdev);
	struct ehci_hcd_mv *ehci_mv = FUNC1(hcd);

	if (hcd->rh_registered)
		FUNC7(hcd);

	if (!FUNC0(ehci_mv->otg))
		FUNC3(ehci_mv->otg->otg, NULL);

	if (ehci_mv->mode == MV_USB_MODE_HOST) {
		if (ehci_mv->set_vbus)
			ehci_mv->set_vbus(0);

		FUNC2(ehci_mv);
	}

	FUNC6(hcd);

	return 0;
}