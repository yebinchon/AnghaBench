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
struct usb_hcd {int dummy; } ;
struct fhci_hcd {int /*<<< orphan*/ * pins; int /*<<< orphan*/ * gpios; int /*<<< orphan*/  pram; TYPE_1__* timer; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int NUM_GPIOS ; 
 int NUM_PINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct fhci_hcd* FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	struct usb_hcd *hcd = FUNC2(dev);
	struct fhci_hcd *fhci = FUNC8(hcd);
	int i;
	int j;

	FUNC11(hcd);
	FUNC4(fhci->timer->irq, hcd);
	FUNC7(fhci->timer);
	FUNC0(FUNC1(fhci->pram));
	for (i = 0; i < NUM_GPIOS; i++) {
		if (!FUNC6(fhci->gpios[i]))
			continue;
		FUNC5(fhci->gpios[i]);
	}
	for (j = 0; j < NUM_PINS; j++)
		FUNC9(fhci->pins[j]);
	FUNC3(fhci);
	FUNC10(hcd);
	return 0;
}