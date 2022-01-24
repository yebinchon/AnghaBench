#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct urb {TYPE_2__* ep; } ;
struct list_head {int dummy; } ;
struct fotg210_qh {scalar_t__ qh_state; } ;
struct fotg210_hcd {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_10__ {int /*<<< orphan*/  bandwidth_int_reqs; } ;
struct TYPE_11__ {TYPE_3__ self; } ;
struct TYPE_8__ {unsigned int bEndpointAddress; } ;
struct TYPE_9__ {int /*<<< orphan*/  hcpriv; TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 scalar_t__ QH_STATE_IDLE ; 
 TYPE_4__* FUNC3 (struct fotg210_hcd*) ; 
 struct fotg210_qh* FUNC4 (struct fotg210_hcd*,struct urb*,struct list_head*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct fotg210_hcd*,struct fotg210_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct fotg210_hcd*,struct urb*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (TYPE_4__*,struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct urb*) ; 

__attribute__((used)) static int FUNC12(struct fotg210_hcd *fotg210, struct urb *urb,
		struct list_head *qtd_list, gfp_t mem_flags)
{
	unsigned epnum;
	unsigned long flags;
	struct fotg210_qh *qh;
	int status;
	struct list_head empty;

	/* get endpoint and transfer/schedule data */
	epnum = urb->ep->desc.bEndpointAddress;

	FUNC7(&fotg210->lock, flags);

	if (FUNC9(!FUNC1(FUNC3(fotg210)))) {
		status = -ESHUTDOWN;
		goto done_not_linked;
	}
	status = FUNC10(FUNC3(fotg210), urb);
	if (FUNC9(status))
		goto done_not_linked;

	/* get qh and force any scheduling errors */
	FUNC2(&empty);
	qh = FUNC4(fotg210, urb, &empty, epnum, &urb->ep->hcpriv);
	if (qh == NULL) {
		status = -ENOMEM;
		goto done;
	}
	if (qh->qh_state == QH_STATE_IDLE) {
		status = FUNC5(fotg210, qh);
		if (status)
			goto done;
	}

	/* then queue the urb's tds to the qh */
	qh = FUNC4(fotg210, urb, qtd_list, epnum, &urb->ep->hcpriv);
	FUNC0(qh == NULL);

	/* ... update usbfs periodic stats */
	FUNC3(fotg210)->self.bandwidth_int_reqs++;

done:
	if (FUNC9(status))
		FUNC11(FUNC3(fotg210), urb);
done_not_linked:
	FUNC8(&fotg210->lock, flags);
	if (status)
		FUNC6(fotg210, urb, qtd_list);

	return status;
}