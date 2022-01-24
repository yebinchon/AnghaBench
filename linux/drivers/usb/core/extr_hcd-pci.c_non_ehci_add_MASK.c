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
struct TYPE_2__ {struct TYPE_2__* hs_companion; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {scalar_t__ class; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CL_EHCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev, struct usb_hcd *hcd,
		struct pci_dev *companion, struct usb_hcd *companion_hcd)
{
	if (FUNC2(pdev) && companion->class == CL_EHCI) {
		FUNC0(&pdev->dev, "FS/LS companion for %s\n",
				FUNC1(&companion->dev));
		hcd->self.hs_companion = &companion_hcd->self;
	}
}