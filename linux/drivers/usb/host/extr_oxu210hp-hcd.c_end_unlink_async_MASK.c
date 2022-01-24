#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct oxu_hcd {struct ehci_qh* reclaim; TYPE_3__* async; scalar_t__ reclaim_ready; } ;
struct TYPE_5__ {int /*<<< orphan*/ * qh; } ;
struct ehci_qh {int /*<<< orphan*/  qtd_list; struct ehci_qh* reclaim; TYPE_1__ qh_next; int /*<<< orphan*/  qh_state; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int /*<<< orphan*/ * qh; } ;
struct TYPE_7__ {TYPE_2__ qh_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QH_STATE_IDLE ; 
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 int /*<<< orphan*/  TIMER_IAA_WATCHDOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC7 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct oxu_hcd *oxu)
{
	struct ehci_qh *qh = oxu->reclaim;
	struct ehci_qh *next;

	FUNC8(oxu, TIMER_IAA_WATCHDOG);

	qh->qh_state = QH_STATE_IDLE;
	qh->qh_next.qh = NULL;
	FUNC5(qh);			/* refcount from reclaim */

	/* other unlink(s) may be pending (in QH_STATE_UNLINK_WAIT) */
	next = qh->reclaim;
	oxu->reclaim = next;
	oxu->reclaim_ready = 0;
	qh->reclaim = NULL;

	FUNC3(oxu, qh);

	if (!FUNC1(&qh->qtd_list)
			&& FUNC0(FUNC2(oxu)->state))
		FUNC4(oxu, qh);
	else {
		FUNC5(qh);		/* refcount from async list */

		/* it's not free to turn the async schedule on/off; leave it
		 * active but idle for a while once it empties.
		 */
		if (FUNC0(FUNC2(oxu)->state)
				&& oxu->async->qh_next.qh == NULL)
			FUNC7(oxu, TIMER_ASYNC_OFF);
	}

	if (next) {
		oxu->reclaim = NULL;
		FUNC6(oxu, next);
	}
}