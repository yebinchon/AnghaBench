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
struct TYPE_3__ {struct fotg210_qh* qh; } ;
struct fotg210_qh {scalar_t__ qh_state; scalar_t__ xacterrs; TYPE_2__* hw; TYPE_1__ qh_next; int /*<<< orphan*/  clearing_tt; int /*<<< orphan*/  qh_dma; } ;
struct fotg210_hcd {struct fotg210_qh* async; } ;
typedef  int /*<<< orphan*/  __hc32 ;
struct TYPE_4__ {int /*<<< orphan*/  hw_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ QH_STATE_IDLE ; 
 scalar_t__ QH_STATE_LINKED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,struct fotg210_qh*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
	__hc32 dma = FUNC0(fotg210, qh->qh_dma);
	struct fotg210_qh *head;

	/* Don't link a QH if there's a Clear-TT-Buffer pending */
	if (FUNC4(qh->clearing_tt))
		return;

	FUNC1(qh->qh_state != QH_STATE_IDLE);

	/* clear halt and/or toggle; and maybe recover from silicon quirk */
	FUNC3(fotg210, qh);

	/* splice right after start */
	head = fotg210->async;
	qh->qh_next = head->qh_next;
	qh->hw->hw_next = head->hw->hw_next;
	FUNC5();

	head->qh_next.qh = qh;
	head->hw->hw_next = dma;

	qh->xacterrs = 0;
	qh->qh_state = QH_STATE_LINKED;
	/* qtd completions reported later by interrupt */

	FUNC2(fotg210);
}