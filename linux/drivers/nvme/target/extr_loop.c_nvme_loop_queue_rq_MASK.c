#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  q; } ;
struct nvme_ns {int dummy; } ;
struct nvme_loop_queue {int /*<<< orphan*/  nvme_sq; int /*<<< orphan*/  nvme_cq; TYPE_3__* ctrl; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  transfer_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg; int /*<<< orphan*/  port; } ;
struct TYPE_10__ {int /*<<< orphan*/  sgl; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {TYPE_2__ common; } ;
struct nvme_loop_iod {int /*<<< orphan*/  work; TYPE_5__ req; TYPE_4__ sg_table; int /*<<< orphan*/  first_sgl; TYPE_6__ cmd; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct nvme_loop_queue* driver_data; TYPE_1__* queue; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ctrl; } ;
struct TYPE_7__ {struct nvme_ns* queuedata; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  NVME_CMD_SGL_METABUF ; 
 int /*<<< orphan*/  NVME_LOOP_Q_LIVE ; 
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 struct nvme_loop_iod* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/  nvme_loop_ops ; 
 scalar_t__ FUNC6 (struct nvme_ns*,struct request*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct request*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC13(struct blk_mq_hw_ctx *hctx,
		const struct blk_mq_queue_data *bd)
{
	struct nvme_ns *ns = hctx->queue->queuedata;
	struct nvme_loop_queue *queue = hctx->driver_data;
	struct request *req = bd->rq;
	struct nvme_loop_iod *iod = FUNC0(req);
	bool queue_ready = FUNC12(NVME_LOOP_Q_LIVE, &queue->flags);
	blk_status_t ret;

	if (!FUNC8(&queue->ctrl->ctrl, req, queue_ready))
		return FUNC9(&queue->ctrl->ctrl, req);

	ret = FUNC6(ns, req, &iod->cmd);
	if (ret)
		return ret;

	FUNC1(req);
	iod->cmd.common.flags |= NVME_CMD_SGL_METABUF;
	iod->req.port = queue->ctrl->port;
	if (!FUNC7(&iod->req, &queue->nvme_cq,
			&queue->nvme_sq, &nvme_loop_ops))
		return BLK_STS_OK;

	if (FUNC3(req)) {
		iod->sg_table.sgl = iod->first_sgl;
		if (FUNC11(&iod->sg_table,
				FUNC3(req),
				iod->sg_table.sgl, SG_CHUNK_SIZE)) {
			FUNC5(req);
			return BLK_STS_RESOURCE;
		}

		iod->req.sg = iod->sg_table.sgl;
		iod->req.sg_cnt = FUNC2(req->q, req, iod->sg_table.sgl);
		iod->req.transfer_len = FUNC4(req);
	}

	FUNC10(&iod->work);
	return BLK_STS_OK;
}