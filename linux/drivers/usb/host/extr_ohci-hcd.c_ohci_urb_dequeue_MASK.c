#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* ed; } ;
typedef  TYPE_1__ urb_priv_t ;
struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* hcpriv; } ;
struct ohci_hcd {scalar_t__ rh_state; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ ED_OPER ; 
 scalar_t__ OHCI_RH_RUNNING ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ohci_hcd*,TYPE_2__*) ; 
 int FUNC5 (struct usb_hcd*,struct urb*,int) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct ohci_hcd		*ohci = FUNC0 (hcd);
	unsigned long		flags;
	int			rc;
	urb_priv_t		*urb_priv;

	FUNC2 (&ohci->lock, flags);
	rc = FUNC5(hcd, urb, status);
	if (rc == 0) {

		/* Unless an IRQ completed the unlink while it was being
		 * handed to us, flag it for unlink and giveback, and force
		 * some upcoming INTR_SF to call finish_unlinks()
		 */
		urb_priv = urb->hcpriv;
		if (urb_priv->ed->state == ED_OPER)
			FUNC4(ohci, urb_priv->ed);

		if (ohci->rh_state != OHCI_RH_RUNNING) {
			/* With HC dead, we can clean up right away */
			FUNC1(ohci);
		}
	}
	FUNC3 (&ohci->lock, flags);
	return rc;
}