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
struct nvmefc_ls_req {void (* done ) (struct nvmefc_ls_req*,int) ;scalar_t__ rsplen; scalar_t__ rqstlen; scalar_t__ rqstdma; scalar_t__ rspdma; int /*<<< orphan*/  rqstaddr; } ;
struct nvmefc_ls_req_op {int req_queued; int ls_error; int /*<<< orphan*/  lsreq_list; int /*<<< orphan*/  ls_done; struct nvme_fc_rport* rport; struct nvmefc_ls_req ls_req; } ;
struct TYPE_6__ {scalar_t__ port_state; } ;
struct nvme_fc_rport {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; TYPE_3__ remoteport; TYPE_2__* lport; int /*<<< orphan*/  ls_req_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  localport; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* ls_req ) (int /*<<< orphan*/ *,TYPE_3__*,struct nvmefc_ls_req*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ECONNREFUSED ; 
 int EFAULT ; 
 int ESHUTDOWN ; 
 scalar_t__ FC_OBJSTATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_fc_rport*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_fc_rport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,struct nvmefc_ls_req*) ; 

__attribute__((used)) static int
FUNC12(struct nvme_fc_rport *rport,
		struct nvmefc_ls_req_op *lsop,
		void (*done)(struct nvmefc_ls_req *req, int status))
{
	struct nvmefc_ls_req *lsreq = &lsop->ls_req;
	unsigned long flags;
	int ret = 0;

	if (rport->remoteport.port_state != FC_OBJSTATE_ONLINE)
		return -ECONNREFUSED;

	if (!FUNC7(rport))
		return -ESHUTDOWN;

	lsreq->done = done;
	lsop->rport = rport;
	lsop->req_queued = false;
	FUNC0(&lsop->lsreq_list);
	FUNC4(&lsop->ls_done);

	lsreq->rqstdma = FUNC1(rport->dev, lsreq->rqstaddr,
				  lsreq->rqstlen + lsreq->rsplen,
				  DMA_BIDIRECTIONAL);
	if (FUNC2(rport->dev, lsreq->rqstdma)) {
		ret = -EFAULT;
		goto out_putrport;
	}
	lsreq->rspdma = lsreq->rqstdma + lsreq->rqstlen;

	FUNC9(&rport->lock, flags);

	FUNC5(&lsop->lsreq_list, &rport->ls_req_list);

	lsop->req_queued = true;

	FUNC10(&rport->lock, flags);

	ret = rport->lport->ops->ls_req(&rport->lport->localport,
					&rport->remoteport, lsreq);
	if (ret)
		goto out_unlink;

	return 0;

out_unlink:
	lsop->ls_error = ret;
	FUNC9(&rport->lock, flags);
	lsop->req_queued = false;
	FUNC6(&lsop->lsreq_list);
	FUNC10(&rport->lock, flags);
	FUNC3(rport->dev, lsreq->rqstdma,
				  (lsreq->rqstlen + lsreq->rsplen),
				  DMA_BIDIRECTIONAL);
out_putrport:
	FUNC8(rport);

	return ret;
}