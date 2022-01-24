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
struct usb_hcd {int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct usb_hcd *hcd = FUNC2(op);

	FUNC0(&op->dev, "stopping GRLIB GRUSBHC EHCI USB Controller\n");

	FUNC4(hcd);

	FUNC1(hcd->irq);

	FUNC3(hcd);

	return 0;
}