#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fhci_usb {scalar_t__ intr_nesting_cnt; struct fhci_hcd* fhci; } ;
struct fhci_hcd {TYPE_2__* regs; TYPE_1__* timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  usb_usbmr; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct fhci_usb *usb)
{
	struct fhci_hcd *fhci = usb->fhci;

	if (usb->intr_nesting_cnt == 0) {
		/* disable the timer interrupt */
		FUNC0(fhci->timer->irq);

		/* disable the usb interrupt */
		FUNC0(FUNC1(fhci)->irq);
		FUNC2(&usb->fhci->regs->usb_usbmr, 0);
	}
	usb->intr_nesting_cnt++;
}