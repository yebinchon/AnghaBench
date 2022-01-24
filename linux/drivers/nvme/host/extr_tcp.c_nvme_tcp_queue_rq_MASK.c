#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct nvme_tcp_request {int dummy; } ;
struct nvme_tcp_queue {TYPE_1__* ctrl; int /*<<< orphan*/  flags; } ;
struct nvme_ns {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct nvme_tcp_queue* driver_data; TYPE_2__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {struct nvme_ns* queuedata; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  NVME_TCP_Q_LIVE ; 
 struct nvme_tcp_request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_tcp_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ns*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct request*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct request*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC8(struct blk_mq_hw_ctx *hctx,
		const struct blk_mq_queue_data *bd)
{
	struct nvme_ns *ns = hctx->queue->queuedata;
	struct nvme_tcp_queue *queue = hctx->driver_data;
	struct request *rq = bd->rq;
	struct nvme_tcp_request *req = FUNC0(rq);
	bool queue_ready = FUNC6(NVME_TCP_Q_LIVE, &queue->flags);
	blk_status_t ret;

	if (!FUNC4(&queue->ctrl->ctrl, rq, queue_ready))
		return FUNC5(&queue->ctrl->ctrl, rq);

	ret = FUNC3(ns, rq);
	if (FUNC7(ret))
		return ret;

	FUNC1(rq);

	FUNC2(req);

	return BLK_STS_OK;
}