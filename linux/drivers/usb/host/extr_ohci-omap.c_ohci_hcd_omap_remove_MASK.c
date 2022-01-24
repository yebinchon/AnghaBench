#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; TYPE_2__* usb_phy; TYPE_1__ self; } ;
struct platform_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_dc_ck ; 
 int /*<<< orphan*/  usb_host_ck ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct usb_hcd	*hcd = FUNC8(pdev);

	FUNC2(hcd->self.controller, "stopping USB Controller\n");
	FUNC12(hcd);
	FUNC6(0);
	if (!FUNC0(hcd->usb_phy)) {
		(void) FUNC7(hcd->usb_phy->otg, 0);
		FUNC11(hcd->usb_phy);
	}
	if (FUNC5())
		FUNC3(9);
	FUNC4(hcd->regs);
	FUNC9(hcd->rsrc_start, hcd->rsrc_len);
	FUNC10(hcd);
	FUNC1(usb_dc_ck);
	FUNC1(usb_host_ck);
	return 0;
}