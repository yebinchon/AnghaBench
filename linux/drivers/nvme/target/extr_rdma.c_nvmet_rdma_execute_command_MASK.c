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
struct nvmet_rdma_rsp {int /*<<< orphan*/  req; int /*<<< orphan*/  read_cqe; int /*<<< orphan*/  rw; scalar_t__ n_rdma; struct nvmet_rdma_queue* queue; } ;
struct TYPE_5__ {TYPE_1__* ctrl; } ;
struct nvmet_rdma_queue {TYPE_3__* cm_id; int /*<<< orphan*/  sq_wr_avail; TYPE_2__ nvme_sq; int /*<<< orphan*/  idx; } ;
struct TYPE_6__ {int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp; } ;
struct TYPE_4__ {int /*<<< orphan*/  cntlid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_SC_DATA_XFER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct nvmet_rdma_rsp *rsp)
{
	struct nvmet_rdma_queue *queue = rsp->queue;

	if (FUNC7(FUNC1(1 + rsp->n_rdma,
			&queue->sq_wr_avail) < 0)) {
		FUNC5("IB send queue full (needed %d): queue %u cntlid %u\n",
				1 + rsp->n_rdma, queue->idx,
				queue->nvme_sq.ctrl->cntlid);
		FUNC0(1 + rsp->n_rdma, &queue->sq_wr_avail);
		return false;
	}

	if (FUNC2(rsp)) {
		if (FUNC6(&rsp->rw, queue->cm_id->qp,
				queue->cm_id->port_num, &rsp->read_cqe, NULL))
			FUNC3(&rsp->req, NVME_SC_DATA_XFER_ERROR);
	} else {
		FUNC4(&rsp->req);
	}

	return true;
}