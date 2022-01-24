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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct octeon_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct octeon_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct usb_hcd* FUNC2 (struct device*) ; 
 struct octeon_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int status;
	struct device *dev = &pdev->dev;
	struct usb_hcd *hcd = FUNC2(dev);
	struct octeon_hcd *usb = FUNC3(hcd);
	unsigned long flags;

	FUNC7(hcd);
	FUNC4(&usb->lock, flags);
	status = FUNC0(usb);
	FUNC5(&usb->lock, flags);
	if (status)
		FUNC1(dev, "USB shutdown failed with %d\n", status);

	FUNC6(hcd);

	return 0;
}