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
struct TYPE_2__ {struct usb_device* root_hub; struct TYPE_2__* hs_companion; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev, struct usb_hcd *hcd,
		struct pci_dev *companion, struct usb_hcd *companion_hcd)
{
	struct usb_device *udev;

	if (FUNC3(companion)) {
		if (FUNC1(&pdev->dev)) {	/* Succeeded */
			FUNC0(&pdev->dev, "HS companion for %s\n",
					FUNC2(&companion->dev));
			companion_hcd->self.hs_companion = &hcd->self;
		}
		udev = companion_hcd->self.root_hub;
		FUNC4(udev, 1);
		FUNC5(udev);
	}
}