#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvmefc_ls_req {scalar_t__ rsplen; scalar_t__ rqstlen; int /*<<< orphan*/  rqstdma; } ;
struct nvmefc_ls_req_op {int req_queued; int /*<<< orphan*/  lsreq_list; struct nvmefc_ls_req ls_req; struct nvme_fc_rport* rport; } ;
struct nvme_fc_rport {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_fc_rport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct nvmefc_ls_req_op *lsop)
{
	struct nvme_fc_rport *rport = lsop->rport;
	struct nvmefc_ls_req *lsreq = &lsop->ls_req;
	unsigned long flags;

	FUNC3(&rport->lock, flags);

	if (!lsop->req_queued) {
		FUNC4(&rport->lock, flags);
		return;
	}

	FUNC1(&lsop->lsreq_list);

	lsop->req_queued = false;

	FUNC4(&rport->lock, flags);

	FUNC0(rport->dev, lsreq->rqstdma,
				  (lsreq->rqstlen + lsreq->rsplen),
				  DMA_BIDIRECTIONAL);

	FUNC2(rport);
}