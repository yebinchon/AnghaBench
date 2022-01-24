#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct nvme_rdma_queue {int const queue_size; TYPE_6__* device; int /*<<< orphan*/  ib_cq; TYPE_5__* cm_id; int /*<<< orphan*/  rsp_ring; int /*<<< orphan*/  flags; TYPE_4__* ctrl; TYPE_9__* qp; } ;
struct nvme_completion {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum ib_poll_context { ____Placeholder_ib_poll_context } ib_poll_context ;
struct TYPE_16__ {int /*<<< orphan*/  rdma_mrs; } ;
struct TYPE_15__ {struct ib_device* dev; } ;
struct TYPE_14__ {TYPE_2__* device; } ;
struct TYPE_12__ {int /*<<< orphan*/  device; } ;
struct TYPE_13__ {TYPE_3__ ctrl; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct TYPE_11__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ECONNREFUSED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_MR_TYPE_MEM_REG ; 
 int IB_POLL_DIRECT ; 
 int IB_POLL_SOFTIRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVME_RDMA_Q_TR_READY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,struct nvme_rdma_queue*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_9__*,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int const,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvme_rdma_queue*,int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 TYPE_6__* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_device*,int /*<<< orphan*/ ,int const,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ib_device*) ; 
 scalar_t__ FUNC12 (struct nvme_rdma_queue*) ; 
 int FUNC13 (struct nvme_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct nvme_rdma_queue *queue)
{
	struct ib_device *ibdev;
	const int send_wr_factor = 3;			/* MR, SEND, INV */
	const int cq_factor = send_wr_factor + 1;	/* + RECV */
	int comp_vector, idx = FUNC13(queue);
	enum ib_poll_context poll_ctx;
	int ret, pages_per_mr;

	queue->device = FUNC9(queue->cm_id);
	if (!queue->device) {
		FUNC2(queue->cm_id->device->dev.parent,
			"no client data found!\n");
		return -ECONNREFUSED;
	}
	ibdev = queue->device->dev;

	/*
	 * Spread I/O queues completion vectors according their queue index.
	 * Admin queues can always go on completion vector 0.
	 */
	comp_vector = idx == 0 ? idx : idx - 1;

	/* Polling queues need direct cq polling context */
	if (FUNC12(queue))
		poll_ctx = IB_POLL_DIRECT;
	else
		poll_ctx = IB_POLL_SOFTIRQ;

	/* +1 for ib_stop_cq */
	queue->ib_cq = FUNC3(ibdev, queue,
				cq_factor * queue->queue_size + 1,
				comp_vector, poll_ctx);
	if (FUNC0(queue->ib_cq)) {
		ret = FUNC1(queue->ib_cq);
		goto out_put_dev;
	}

	ret = FUNC7(queue, send_wr_factor);
	if (ret)
		goto out_destroy_ib_cq;

	queue->rsp_ring = FUNC6(ibdev, queue->queue_size,
			sizeof(struct nvme_completion), DMA_FROM_DEVICE);
	if (!queue->rsp_ring) {
		ret = -ENOMEM;
		goto out_destroy_qp;
	}

	/*
	 * Currently we don't use SG_GAPS MR's so if the first entry is
	 * misaligned we'll end up using two entries for a single data page,
	 * so one additional entry is required.
	 */
	pages_per_mr = FUNC11(ibdev) + 1;
	ret = FUNC5(queue->qp, &queue->qp->rdma_mrs,
			      queue->queue_size,
			      IB_MR_TYPE_MEM_REG,
			      pages_per_mr, 0);
	if (ret) {
		FUNC2(queue->ctrl->ctrl.device,
			"failed to initialize MR pool sized %d for QID %d\n",
			queue->queue_size, idx);
		goto out_destroy_ring;
	}

	FUNC15(NVME_RDMA_Q_TR_READY, &queue->flags);

	return 0;

out_destroy_ring:
	FUNC10(ibdev, queue->rsp_ring, queue->queue_size,
			    sizeof(struct nvme_completion), DMA_FROM_DEVICE);
out_destroy_qp:
	FUNC14(queue->cm_id);
out_destroy_ib_cq:
	FUNC4(queue->ib_cq);
out_put_dev:
	FUNC8(queue->device);
	return ret;
}