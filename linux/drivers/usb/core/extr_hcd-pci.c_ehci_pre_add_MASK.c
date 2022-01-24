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
struct TYPE_2__ {struct usb_device* root_hub; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev, struct usb_hcd *hcd,
		struct pci_dev *companion, struct usb_hcd *companion_hcd)
{
	struct usb_device *udev;

	if (FUNC0(companion)) {
		udev = companion_hcd->self.root_hub;
		FUNC1(udev);
		FUNC2(udev, 0);
	}
}