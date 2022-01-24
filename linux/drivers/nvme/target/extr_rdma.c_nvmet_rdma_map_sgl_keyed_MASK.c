#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rdma_cm_id {int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp; } ;
struct TYPE_5__ {scalar_t__ transfer_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg; } ;
struct nvmet_rdma_rsp {int n_rdma; TYPE_2__ req; int /*<<< orphan*/  flags; int /*<<< orphan*/  invalidate_rkey; int /*<<< orphan*/  rw; TYPE_1__* queue; } ;
struct nvme_keyed_sgl_desc {int /*<<< orphan*/  length; int /*<<< orphan*/  key; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {struct rdma_cm_id* cm_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMET_RDMA_REQ_INVALIDATE_RKEY ; 
 int /*<<< orphan*/  NVME_SC_INTERNAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC6(struct nvmet_rdma_rsp *rsp,
		struct nvme_keyed_sgl_desc *sgl, bool invalidate)
{
	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
	u64 addr = FUNC2(sgl->addr);
	u32 key = FUNC1(sgl->key);
	int ret;

	rsp->req.transfer_len = FUNC0(sgl->length);

	/* no data command? */
	if (!rsp->req.transfer_len)
		return 0;

	ret = FUNC4(&rsp->req);
	if (ret < 0)
		goto error_out;

	ret = FUNC5(&rsp->rw, cm_id->qp, cm_id->port_num,
			rsp->req.sg, rsp->req.sg_cnt, 0, addr, key,
			FUNC3(&rsp->req));
	if (ret < 0)
		goto error_out;
	rsp->n_rdma += ret;

	if (invalidate) {
		rsp->invalidate_rkey = key;
		rsp->flags |= NVMET_RDMA_REQ_INVALIDATE_RKEY;
	}

	return 0;

error_out:
	rsp->req.transfer_len = 0;
	return NVME_SC_INTERNAL;
}