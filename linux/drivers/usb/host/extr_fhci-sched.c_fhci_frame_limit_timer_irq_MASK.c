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
struct fhci_usb {int /*<<< orphan*/  ep0; TYPE_1__* actual_frame; } ;
struct fhci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; struct fhci_usb* usb_lld; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ frame_status; } ;

/* Variables and functions */
 scalar_t__ FRAME_IS_TRANSMITTED ; 
 scalar_t__ FRAME_TIMER_END_TRANSMISSION ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct fhci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC6(int irq, void *_hcd)
{
	struct usb_hcd *hcd = _hcd;
	struct fhci_hcd *fhci = FUNC3(hcd);
	struct fhci_usb *usb = fhci->usb_lld;

	FUNC4(&fhci->lock);

	FUNC2(fhci->timer, 1000, false);

	if (usb->actual_frame->frame_status == FRAME_IS_TRANSMITTED) {
		usb->actual_frame->frame_status = FRAME_TIMER_END_TRANSMISSION;
		FUNC0(usb->ep0);
	}

	FUNC1(usb);

	FUNC5(&fhci->lock);

	return IRQ_HANDLED;
}