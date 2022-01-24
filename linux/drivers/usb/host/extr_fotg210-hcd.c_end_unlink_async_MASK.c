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
struct TYPE_2__ {int /*<<< orphan*/ * qh; } ;
struct fotg210_qh {int /*<<< orphan*/  qtd_list; TYPE_1__ qh_next; int /*<<< orphan*/  qh_state; struct fotg210_qh* unlink_next; } ;
struct fotg210_hcd {int async_unlinking; scalar_t__ rh_state; scalar_t__ async_unlink; struct fotg210_qh* async_iaa; } ;

/* Variables and functions */
 scalar_t__ FOTG210_RH_RUNNING ; 
 int /*<<< orphan*/  QH_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,struct fotg210_qh*) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,struct fotg210_qh*) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_hcd*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct fotg210_hcd *fotg210)
{
	struct fotg210_qh *qh;

	/* Process the idle QHs */
restart:
	fotg210->async_unlinking = true;
	while (fotg210->async_iaa) {
		qh = fotg210->async_iaa;
		fotg210->async_iaa = qh->unlink_next;
		qh->unlink_next = NULL;

		qh->qh_state = QH_STATE_IDLE;
		qh->qh_next.qh = NULL;

		FUNC2(fotg210, qh);
		if (!FUNC1(&qh->qtd_list) &&
				fotg210->rh_state == FOTG210_RH_RUNNING)
			FUNC3(fotg210, qh);
		FUNC0(fotg210);
	}
	fotg210->async_unlinking = false;

	/* Start a new IAA cycle if any QHs are waiting for it */
	if (fotg210->async_unlink) {
		FUNC4(fotg210, true);
		if (FUNC5(fotg210->rh_state < FOTG210_RH_RUNNING))
			goto restart;
	}
}