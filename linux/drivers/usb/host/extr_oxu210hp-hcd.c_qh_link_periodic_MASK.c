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
union ehci_shadow {struct ehci_qh* qh; scalar_t__ ptr; } ;
struct oxu_hcd {unsigned int periodic_size; scalar_t__* periodic; int /*<<< orphan*/  periodic_sched; union ehci_shadow* pshadow; } ;
struct ehci_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; scalar_t__ hw_next; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  qh_dma; union ehci_shadow qh_next; int /*<<< orphan*/  hw_info2; TYPE_1__* dev; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_5__ {int bandwidth_allocated; } ;
struct TYPE_6__ {TYPE_2__ self; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QH_CMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int QH_SMASK ; 
 int /*<<< orphan*/  QH_STATE_LINKED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ Q_TYPE_QH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,int,struct ehci_qh*,unsigned int,int,int) ; 
 int FUNC3 (struct oxu_hcd*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (struct oxu_hcd*) ; 
 union ehci_shadow* FUNC6 (union ehci_shadow*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
	unsigned i;
	unsigned period = qh->period;

	FUNC2(&qh->dev->dev,
		"link qh%d-%04x/%p start %d [%d/%d us]\n",
		period, FUNC4(&qh->hw_info2) & (QH_CMASK | QH_SMASK),
		qh, qh->start, qh->usecs, qh->c_usecs);

	/* high bandwidth, or otherwise every microframe */
	if (period == 0)
		period = 1;

	for (i = qh->start; i < oxu->periodic_size; i += period) {
		union ehci_shadow	*prev = &oxu->pshadow[i];
		__le32			*hw_p = &oxu->periodic[i];
		union ehci_shadow	here = *prev;
		__le32			type = 0;

		/* skip the iso nodes at list head */
		while (here.ptr) {
			type = FUNC1(*hw_p);
			if (type == Q_TYPE_QH)
				break;
			prev = FUNC6(prev, type);
			hw_p = &here.qh->hw_next;
			here = *prev;
		}

		/* sorting each branch by period (slow-->fast)
		 * enables sharing interior tree nodes
		 */
		while (here.ptr && qh != here.qh) {
			if (qh->period > here.qh->period)
				break;
			prev = &here.qh->qh_next;
			hw_p = &here.qh->hw_next;
			here = *prev;
		}
		/* link in this qh, unless some earlier pass did that */
		if (qh != here.qh) {
			qh->qh_next = here;
			if (here.qh)
				qh->hw_next = *hw_p;
			FUNC8();
			prev->qh = qh;
			*hw_p = FUNC0(qh->qh_dma);
		}
	}
	qh->qh_state = QH_STATE_LINKED;
	FUNC7(qh);

	/* update per-qh bandwidth for usbfs */
	FUNC5(oxu)->self.bandwidth_allocated += qh->period
		? ((qh->usecs + qh->c_usecs) / qh->period)
		: (qh->usecs * 8);

	/* maybe enable periodic schedule processing */
	if (!oxu->periodic_sched++)
		return FUNC3(oxu);

	return 0;
}