#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct request {scalar_t__ tag; } ;
struct TYPE_11__ {int /*<<< orphan*/  done; } ;
struct nvme_rdma_qe {int /*<<< orphan*/  dma; TYPE_4__ cqe; struct nvme_command* data; } ;
struct TYPE_12__ {int /*<<< orphan*/  wr; } ;
struct nvme_rdma_request {struct nvme_rdma_qe sqe; TYPE_5__ reg_wr; scalar_t__ mr; int /*<<< orphan*/  num_sge; int /*<<< orphan*/  sge; } ;
struct nvme_rdma_queue {TYPE_3__* ctrl; TYPE_2__* device; int /*<<< orphan*/  flags; } ;
struct nvme_ns {int dummy; } ;
struct nvme_command {int dummy; } ;
struct ib_device {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct nvme_rdma_queue* driver_data; TYPE_1__* queue; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_13__ {int /*<<< orphan*/  device; } ;
struct TYPE_10__ {TYPE_6__ ctrl; } ;
struct TYPE_9__ {struct ib_device* dev; } ;
struct TYPE_8__ {struct nvme_ns* queuedata; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NVME_RDMA_Q_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nvme_rdma_request* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,struct nvme_command*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 
 int FUNC10 (struct nvme_rdma_queue*,struct request*,struct nvme_command*) ; 
 int FUNC11 (struct nvme_rdma_queue*,struct nvme_rdma_qe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_rdma_send_done ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_rdma_queue*,struct request*) ; 
 scalar_t__ FUNC13 (struct nvme_ns*,struct request*,struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,struct request*,int) ; 
 scalar_t__ FUNC15 (TYPE_6__*,struct request*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static blk_status_t FUNC18(struct blk_mq_hw_ctx *hctx,
		const struct blk_mq_queue_data *bd)
{
	struct nvme_ns *ns = hctx->queue->queuedata;
	struct nvme_rdma_queue *queue = hctx->driver_data;
	struct request *rq = bd->rq;
	struct nvme_rdma_request *req = FUNC1(rq);
	struct nvme_rdma_qe *sqe = &req->sqe;
	struct nvme_command *c = sqe->data;
	struct ib_device *dev;
	bool queue_ready = FUNC16(NVME_RDMA_Q_LIVE, &queue->flags);
	blk_status_t ret;
	int err;

	FUNC0(rq->tag < 0);

	if (!FUNC14(&queue->ctrl->ctrl, rq, queue_ready))
		return FUNC15(&queue->ctrl->ctrl, rq);

	dev = queue->device->dev;

	req->sqe.dma = FUNC4(dev, req->sqe.data,
					 sizeof(struct nvme_command),
					 DMA_TO_DEVICE);
	err = FUNC5(dev, req->sqe.dma);
	if (FUNC17(err))
		return BLK_STS_RESOURCE;

	FUNC6(dev, sqe->dma,
			sizeof(struct nvme_command), DMA_TO_DEVICE);

	ret = FUNC13(ns, rq, c);
	if (ret)
		goto unmap_qe;

	FUNC2(rq);

	err = FUNC10(queue, rq, c);
	if (FUNC17(err < 0)) {
		FUNC3(queue->ctrl->ctrl.device,
			     "Failed to map data (%d)\n", err);
		FUNC9(rq);
		goto err;
	}

	sqe->cqe.done = nvme_rdma_send_done;

	FUNC7(dev, sqe->dma,
			sizeof(struct nvme_command), DMA_TO_DEVICE);

	err = FUNC11(queue, sqe, req->sge, req->num_sge,
			req->mr ? &req->reg_wr.wr : NULL);
	if (FUNC17(err)) {
		FUNC12(queue, rq);
		goto err;
	}

	return BLK_STS_OK;

err:
	if (err == -ENOMEM || err == -EAGAIN)
		ret = BLK_STS_RESOURCE;
	else
		ret = BLK_STS_IOERR;
unmap_qe:
	FUNC8(dev, req->sqe.dma, sizeof(struct nvme_command),
			    DMA_TO_DEVICE);
	return ret;
}