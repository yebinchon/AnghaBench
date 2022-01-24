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
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {struct ed* hcpriv; TYPE_1__ desc; } ;
struct usb_hcd {int dummy; } ;
struct ohci_hcd {scalar_t__ rh_state; int /*<<< orphan*/  lock; } ;
struct ed {int state; int /*<<< orphan*/  dummy; int /*<<< orphan*/  td_list; } ;

/* Variables and functions */
#define  ED_IDLE 129 
#define  ED_UNLINK 128 
 scalar_t__ OHCI_RH_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ohci_hcd*,struct ed*) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ohci_hcd*,char*,struct ed*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ohci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ohci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct ohci_hcd		*ohci = FUNC1 (hcd);
	unsigned long		flags;
	struct ed		*ed = ep->hcpriv;
	unsigned		limit = 1000;

	/* ASSERT:  any requests/urbs are being unlinked */
	/* ASSERT:  nobody can be submitting urbs for this any more */

	if (!ed)
		return;

rescan:
	FUNC7 (&ohci->lock, flags);

	if (ohci->rh_state != OHCI_RH_RUNNING) {
sanitize:
		ed->state = ED_IDLE;
		FUNC5(ohci);
	}

	switch (ed->state) {
	case ED_UNLINK:		/* wait for hw to finish? */
		/* major IRQ delivery trouble loses INTR_SF too... */
		if (limit-- == 0) {
			FUNC4(ohci, "ED unlink timeout\n");
			goto sanitize;
		}
		FUNC8 (&ohci->lock, flags);
		FUNC6(1);
		goto rescan;
	case ED_IDLE:		/* fully unlinked */
		if (FUNC2 (&ed->td_list)) {
			FUNC9 (ohci, ed->dummy);
			FUNC0 (ohci, ed);
			break;
		}
		/* fall through */
	default:
		/* caller was supposed to have unlinked any requests;
		 * that's not our job.  can't recover; must leak ed.
		 */
		FUNC3 (ohci, "leak ed %p (#%02x) state %d%s\n",
			ed, ep->desc.bEndpointAddress, ed->state,
			FUNC2 (&ed->td_list) ? "" : " (has tds)");
		FUNC9 (ohci, ed->dummy);
		break;
	}
	ep->hcpriv = NULL;
	FUNC8 (&ohci->lock, flags);
}