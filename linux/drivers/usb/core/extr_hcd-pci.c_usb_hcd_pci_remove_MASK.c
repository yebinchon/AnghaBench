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
struct TYPE_2__ {int /*<<< orphan*/ * hs_companion; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {scalar_t__ class; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CL_EHCI ; 
 int /*<<< orphan*/  companions_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_remove ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct usb_hcd* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 

void FUNC15(struct pci_dev *dev)
{
	struct usb_hcd		*hcd;

	hcd = FUNC8(dev);
	if (!hcd)
		return;

	if (FUNC6(dev))
		FUNC9(&dev->dev);

	/* Fake an interrupt request in order to give the driver a chance
	 * to test whether the controller hardware has been removed (e.g.,
	 * cardbus physical eject).
	 */
	FUNC4();
	FUNC12(0, hcd);
	FUNC5();

	/* Note: dev_set_drvdata must be called while holding the rwsem */
	if (dev->class == CL_EHCI) {
		FUNC2(&companions_rwsem);
		FUNC3(dev, hcd, ehci_remove);
		FUNC14(hcd);
		FUNC0(&dev->dev, NULL);
		FUNC11(&companions_rwsem);
	} else {
		/* Not EHCI; just clear the companion pointer */
		FUNC1(&companions_rwsem);
		hcd->self.hs_companion = NULL;
		FUNC14(hcd);
		FUNC0(&dev->dev, NULL);
		FUNC10(&companions_rwsem);
	}
	FUNC13(hcd);
	FUNC7(dev);
}