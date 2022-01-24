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
struct platform_device {int dummy; } ;
struct bcma_hcd_device {struct platform_device* ehci_dev; struct platform_device* ohci_dev; } ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 struct bcma_hcd_device* FUNC1 (struct bcma_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 

__attribute__((used)) static void FUNC3(struct bcma_device *dev)
{
	struct bcma_hcd_device *usb_dev = FUNC1(dev);
	struct platform_device *ohci_dev = usb_dev->ohci_dev;
	struct platform_device *ehci_dev = usb_dev->ehci_dev;

	if (ohci_dev)
		FUNC2(ohci_dev);
	if (ehci_dev)
		FUNC2(ehci_dev);

	FUNC0(dev, 0);
}