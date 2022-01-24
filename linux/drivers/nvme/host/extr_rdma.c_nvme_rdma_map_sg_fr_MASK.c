#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ num_sge; TYPE_4__* wr_cqe; int /*<<< orphan*/  opcode; } ;
struct TYPE_18__ {int access; int /*<<< orphan*/  key; TYPE_7__* mr; TYPE_5__ wr; } ;
struct TYPE_16__ {int /*<<< orphan*/  done; } ;
struct TYPE_15__ {int /*<<< orphan*/  sgl; } ;
struct nvme_rdma_request {TYPE_7__* mr; TYPE_6__ reg_wr; TYPE_4__ reg_cqe; TYPE_3__ sg_table; } ;
struct nvme_rdma_queue {TYPE_8__* qp; } ;
struct nvme_keyed_sgl_desc {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_13__ {struct nvme_keyed_sgl_desc ksgl; } ;
struct TYPE_14__ {TYPE_1__ dptr; } ;
struct nvme_command {TYPE_2__ common; } ;
struct TYPE_20__ {int /*<<< orphan*/  rdma_mrs; } ;
struct TYPE_19__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  length; int /*<<< orphan*/  iova; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  IB_WR_REG_MR ; 
 int NVME_KEY_SGL_FMT_DATA_DESC ; 
 int NVME_SGL_FMT_INVALIDATE ; 
 int /*<<< orphan*/  SZ_4K ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC4 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_rdma_memreg_done ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct nvme_rdma_queue *queue,
		struct nvme_rdma_request *req, struct nvme_command *c,
		int count)
{
	struct nvme_keyed_sgl_desc *sg = &c->common.dptr.ksgl;
	int nr;

	req->mr = FUNC4(queue->qp, &queue->qp->rdma_mrs);
	if (FUNC0(!req->mr))
		return -EAGAIN;

	/*
	 * Align the MR to a 4K page size to match the ctrl page size and
	 * the block virtual boundary.
	 */
	nr = FUNC3(req->mr, req->sg_table.sgl, count, NULL, SZ_4K);
	if (FUNC10(nr < count)) {
		FUNC5(queue->qp, &queue->qp->rdma_mrs, req->mr);
		req->mr = NULL;
		if (nr < 0)
			return nr;
		return -EINVAL;
	}

	FUNC6(req->mr, FUNC2(req->mr->rkey));

	req->reg_cqe.done = nvme_rdma_memreg_done;
	FUNC7(&req->reg_wr, 0, sizeof(req->reg_wr));
	req->reg_wr.wr.opcode = IB_WR_REG_MR;
	req->reg_wr.wr.wr_cqe = &req->reg_cqe;
	req->reg_wr.wr.num_sge = 0;
	req->reg_wr.mr = req->mr;
	req->reg_wr.key = req->mr->rkey;
	req->reg_wr.access = IB_ACCESS_LOCAL_WRITE |
			     IB_ACCESS_REMOTE_READ |
			     IB_ACCESS_REMOTE_WRITE;

	sg->addr = FUNC1(req->mr->iova);
	FUNC8(req->mr->length, sg->length);
	FUNC9(req->mr->rkey, sg->key);
	sg->type = (NVME_KEY_SGL_FMT_DATA_DESC << 4) |
			NVME_SGL_FMT_INVALIDATE;

	return 0;
}