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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  state; } ;
struct urb {scalar_t__ hcpriv; int /*<<< orphan*/  pipe; } ;
struct oxu_hcd {int /*<<< orphan*/  lock; } ;
struct ehci_qh {int /*<<< orphan*/  qtd_list; int /*<<< orphan*/  qh_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PIPE_BULK 132 
#define  PIPE_CONTROL 131 
#define  PIPE_INTERRUPT 130 
#define  QH_STATE_IDLE 129 
#define  QH_STATE_LINKED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct ehci_qh*,int) ; 
 struct oxu_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct oxu_hcd*,char*,struct ehci_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,struct ehci_qh*) ; 
 int FUNC7 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct oxu_hcd*,struct ehci_qh*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct oxu_hcd *oxu = FUNC2(hcd);
	struct ehci_qh *qh;
	unsigned long flags;

	FUNC8(&oxu->lock, flags);
	switch (FUNC11(urb->pipe)) {
	case PIPE_CONTROL:
	case PIPE_BULK:
	default:
		qh = (struct ehci_qh *) urb->hcpriv;
		if (!qh)
			break;
		FUNC10(oxu, qh);
		break;

	case PIPE_INTERRUPT:
		qh = (struct ehci_qh *) urb->hcpriv;
		if (!qh)
			break;
		switch (qh->qh_state) {
		case QH_STATE_LINKED:
			FUNC3(oxu, qh);
			/* FALL THROUGH */
		case QH_STATE_IDLE:
			FUNC6(oxu, qh);
			break;
		default:
			FUNC5(oxu, "bogus qh %p state %d\n",
					qh, qh->qh_state);
			goto done;
		}

		/* reschedule QH iff another request is queued */
		if (!FUNC4(&qh->qtd_list)
				&& FUNC0(hcd->state)) {
			int status;

			status = FUNC7(oxu, qh);
			FUNC9(&oxu->lock, flags);

			if (status != 0) {
				/* shouldn't happen often, but ...
				 * FIXME kill those tds' urbs
				 */
				FUNC1(hcd->self.controller,
					"can't reschedule qh %p, err %d\n", qh,
					status);
			}
			return status;
		}
		break;
	}
done:
	FUNC9(&oxu->lock, flags);
	return 0;
}