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
struct vhci {int /*<<< orphan*/ * vhci_hcd_ss; int /*<<< orphan*/ * vhci_hcd_hs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct vhci *vhci = *((void **)FUNC0(&pdev->dev));

	/*
	 * Disconnects the root hub,
	 * then reverses the effects of usb_add_hcd(),
	 * invoking the HCD's stop() methods.
	 */
	FUNC2(FUNC3(vhci->vhci_hcd_ss));
	FUNC1(FUNC3(vhci->vhci_hcd_ss));

	FUNC2(FUNC3(vhci->vhci_hcd_hs));
	FUNC1(FUNC3(vhci->vhci_hcd_hs));

	vhci->vhci_hcd_hs = NULL;
	vhci->vhci_hcd_ss = NULL;

	return 0;
}