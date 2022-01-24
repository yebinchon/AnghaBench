#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  tag; } ;
struct nvme_rdma_request {struct nvme_rdma_queue* queue; } ;
struct nvme_rdma_queue {struct nvme_rdma_ctrl* ctrl; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  device; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int /*<<< orphan*/  err_work; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 scalar_t__ NVME_CTRL_LIVE ; 
 scalar_t__ NVME_CTRL_RESETTING ; 
 struct nvme_rdma_request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_rdma_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_rdma_ctrl*,int) ; 

__attribute__((used)) static enum blk_eh_timer_return
FUNC7(struct request *rq, bool reserved)
{
	struct nvme_rdma_request *req = FUNC0(rq);
	struct nvme_rdma_queue *queue = req->queue;
	struct nvme_rdma_ctrl *ctrl = queue->ctrl;

	FUNC1(ctrl->ctrl.device, "I/O %d QID %d timeout\n",
		 rq->tag, FUNC4(queue));

	/*
	 * Restart the timer if a controller reset is already scheduled. Any
	 * timed out commands would be handled before entering the connecting
	 * state.
	 */
	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
		return BLK_EH_RESET_TIMER;

	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {
		/*
		 * Teardown immediately if controller times out while starting
		 * or we are already started error recovery. all outstanding
		 * requests are completed on shutdown, so we return BLK_EH_DONE.
		 */
		FUNC2(&ctrl->err_work);
		FUNC6(ctrl, false);
		FUNC5(ctrl, false);
		return BLK_EH_DONE;
	}

	FUNC1(ctrl->ctrl.device, "starting error recovery\n");
	FUNC3(ctrl);

	return BLK_EH_RESET_TIMER;
}