#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {TYPE_2__* ep; } ;
struct oxu_hcd {int /*<<< orphan*/  lock; } ;
struct list_head {int dummy; } ;
struct ehci_qh {scalar_t__ qh_state; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_8__ {int /*<<< orphan*/  bandwidth_int_reqs; } ;
struct TYPE_9__ {TYPE_3__ self; } ;
struct TYPE_6__ {unsigned int bEndpointAddress; } ;
struct TYPE_7__ {int /*<<< orphan*/  hcpriv; TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 scalar_t__ QH_STATE_IDLE ; 
 TYPE_4__* FUNC3 (struct oxu_hcd*) ; 
 struct ehci_qh* FUNC4 (struct oxu_hcd*,struct urb*,struct list_head*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,struct urb*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct oxu_hcd *oxu, struct urb *urb,
			struct list_head *qtd_list, gfp_t mem_flags)
{
	unsigned epnum;
	unsigned long flags;
	struct ehci_qh *qh;
	int status = 0;
	struct list_head	empty;

	/* get endpoint and transfer/schedule data */
	epnum = urb->ep->desc.bEndpointAddress;

	FUNC7(&oxu->lock, flags);

	if (FUNC9(!FUNC1(FUNC3(oxu)))) {
		status = -ESHUTDOWN;
		goto done;
	}

	/* get qh and force any scheduling errors */
	FUNC2(&empty);
	qh = FUNC4(oxu, urb, &empty, epnum, &urb->ep->hcpriv);
	if (qh == NULL) {
		status = -ENOMEM;
		goto done;
	}
	if (qh->qh_state == QH_STATE_IDLE) {
		status = FUNC5(oxu, qh);
		if (status != 0)
			goto done;
	}

	/* then queue the urb's tds to the qh */
	qh = FUNC4(oxu, urb, qtd_list, epnum, &urb->ep->hcpriv);
	FUNC0(qh == NULL);

	/* ... update usbfs periodic stats */
	FUNC3(oxu)->self.bandwidth_int_reqs++;

done:
	FUNC8(&oxu->lock, flags);
	if (status)
		FUNC6(oxu, urb, qtd_list);

	return status;
}