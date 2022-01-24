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
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  SM501_GATE_USB_HOST ; 
 int /*<<< orphan*/  SM501_IRQ_MASK ; 
 struct usb_hcd* FUNC0 (struct platform_device*) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC0(pdev);
	struct resource	*mem;

	FUNC7(hcd);
	FUNC2(hcd->rsrc_start, hcd->rsrc_len);
	FUNC6(hcd);
	mem = FUNC1(pdev, IORESOURCE_MEM, 1);
	if (mem)
		FUNC2(mem->start, FUNC3(mem));

	/* mask interrupts and disable power */

	FUNC4(pdev->dev.parent, SM501_IRQ_MASK, 0, 1 << 6);
	FUNC5(pdev->dev.parent, SM501_GATE_USB_HOST, 0);

	return 0;
}