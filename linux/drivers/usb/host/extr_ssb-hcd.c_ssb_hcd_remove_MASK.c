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
struct ssb_hcd_device {struct platform_device* ehci_dev; struct platform_device* ohci_dev; } ;
struct ssb_device {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 struct ssb_hcd_device* FUNC2 (struct ssb_device*) ; 

__attribute__((used)) static void FUNC3(struct ssb_device *dev)
{
	struct ssb_hcd_device *usb_dev = FUNC2(dev);
	struct platform_device *ohci_dev = usb_dev->ohci_dev;
	struct platform_device *ehci_dev = usb_dev->ehci_dev;

	if (ohci_dev)
		FUNC0(ohci_dev);
	if (ehci_dev)
		FUNC0(ehci_dev);

	FUNC1(dev, 0);
}