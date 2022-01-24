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
union fotg210_shadow {struct fotg210_qh* qh; scalar_t__ ptr; } ;
struct fotg210_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; int /*<<< orphan*/  intr_node; scalar_t__ xacterrs; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  qh_dma; TYPE_2__* hw; union fotg210_shadow qh_next; TYPE_1__* dev; } ;
struct fotg210_hcd {unsigned int periodic_size; scalar_t__* periodic; int /*<<< orphan*/  intr_count; int /*<<< orphan*/  intr_qh_list; union fotg210_shadow* pshadow; } ;
typedef  scalar_t__ __hc32 ;
struct TYPE_7__ {int bandwidth_allocated; } ;
struct TYPE_8__ {TYPE_3__ self; } ;
struct TYPE_6__ {scalar_t__ hw_next; int /*<<< orphan*/  hw_info2; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QH_CMASK ; 
 scalar_t__ FUNC0 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
 int QH_SMASK ; 
 int /*<<< orphan*/  QH_STATE_LINKED ; 
 scalar_t__ FUNC1 (struct fotg210_hcd*,scalar_t__) ; 
 int /*<<< orphan*/  Q_TYPE_QH ; 
 scalar_t__ FUNC2 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,int,struct fotg210_qh*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_hcd*) ; 
 TYPE_4__* FUNC5 (struct fotg210_hcd*) ; 
 int FUNC6 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 union fotg210_shadow* FUNC8 (struct fotg210_hcd*,union fotg210_shadow*,scalar_t__) ; 
 scalar_t__* FUNC9 (struct fotg210_hcd*,union fotg210_shadow*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
	unsigned i;
	unsigned period = qh->period;

	FUNC3(&qh->dev->dev,
			"link qh%d-%04x/%p start %d [%d/%d us]\n", period,
			FUNC6(fotg210, &qh->hw->hw_info2) &
			(QH_CMASK | QH_SMASK), qh, qh->start, qh->usecs,
			qh->c_usecs);

	/* high bandwidth, or otherwise every microframe */
	if (period == 0)
		period = 1;

	for (i = qh->start; i < fotg210->periodic_size; i += period) {
		union fotg210_shadow *prev = &fotg210->pshadow[i];
		__hc32 *hw_p = &fotg210->periodic[i];
		union fotg210_shadow here = *prev;
		__hc32 type = 0;

		/* skip the iso nodes at list head */
		while (here.ptr) {
			type = FUNC1(fotg210, *hw_p);
			if (type == FUNC2(fotg210, Q_TYPE_QH))
				break;
			prev = FUNC8(fotg210, prev, type);
			hw_p = FUNC9(fotg210, &here, type);
			here = *prev;
		}

		/* sorting each branch by period (slow-->fast)
		 * enables sharing interior tree nodes
		 */
		while (here.ptr && qh != here.qh) {
			if (qh->period > here.qh->period)
				break;
			prev = &here.qh->qh_next;
			hw_p = &here.qh->hw->hw_next;
			here = *prev;
		}
		/* link in this qh, unless some earlier pass did that */
		if (qh != here.qh) {
			qh->qh_next = here;
			if (here.qh)
				qh->hw->hw_next = *hw_p;
			FUNC10();
			prev->qh = qh;
			*hw_p = FUNC0(fotg210, qh->qh_dma);
		}
	}
	qh->qh_state = QH_STATE_LINKED;
	qh->xacterrs = 0;

	/* update per-qh bandwidth for usbfs */
	FUNC5(fotg210)->self.bandwidth_allocated += qh->period
		? ((qh->usecs + qh->c_usecs) / qh->period)
		: (qh->usecs * 8);

	FUNC7(&qh->intr_node, &fotg210->intr_qh_list);

	/* maybe enable periodic schedule processing */
	++fotg210->intr_count;
	FUNC4(fotg210);
}