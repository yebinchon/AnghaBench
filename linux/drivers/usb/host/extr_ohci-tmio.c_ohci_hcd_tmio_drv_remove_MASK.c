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
struct usb_hcd {int /*<<< orphan*/  regs; } ;
struct tmio_hcd {int /*<<< orphan*/  ccr; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int /*<<< orphan*/  (* disable ) (struct platform_device*) ;} ;

/* Variables and functions */
 struct tmio_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mfd_cell* FUNC2 (struct platform_device*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC3(dev);
	struct tmio_hcd *tmio = FUNC0(hcd);
	const struct mfd_cell *cell = FUNC2(dev);

	FUNC7(hcd);
	FUNC5(dev);
	if (cell->disable)
		cell->disable(dev);
	FUNC1(hcd->regs);
	FUNC1(tmio->ccr);
	FUNC6(hcd);

	return 0;
}