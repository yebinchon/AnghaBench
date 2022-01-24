#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  tag; } ;
struct nvme_tcp_request {TYPE_4__* queue; struct nvme_tcp_cmd_pdu* pdu; } ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  device; } ;
struct nvme_tcp_ctrl {TYPE_2__ ctrl; int /*<<< orphan*/  err_work; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct nvme_tcp_cmd_pdu {TYPE_1__ hdr; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_8__ {struct nvme_tcp_ctrl* ctrl; } ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 scalar_t__ NVME_CTRL_LIVE ; 
 scalar_t__ NVME_CTRL_RESETTING ; 
 struct nvme_tcp_request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static enum blk_eh_timer_return
FUNC7(struct request *rq, bool reserved)
{
	struct nvme_tcp_request *req = FUNC0(rq);
	struct nvme_tcp_ctrl *ctrl = req->queue->ctrl;
	struct nvme_tcp_cmd_pdu *pdu = req->pdu;

	/*
	 * Restart the timer if a controller reset is already scheduled. Any
	 * timed out commands would be handled before entering the connecting
	 * state.
	 */
	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
		return BLK_EH_RESET_TIMER;

	FUNC1(ctrl->ctrl.device,
		"queue %d: timeout request %#x type %d\n",
		FUNC4(req->queue), rq->tag, pdu->hdr.type);

	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {
		/*
		 * Teardown immediately if controller times out while starting
		 * or we are already started error recovery. all outstanding
		 * requests are completed on shutdown, so we return BLK_EH_DONE.
		 */
		FUNC2(&ctrl->err_work);
		FUNC6(&ctrl->ctrl, false);
		FUNC5(&ctrl->ctrl, false);
		return BLK_EH_DONE;
	}

	FUNC1(ctrl->ctrl.device, "starting error recovery\n");
	FUNC3(&ctrl->ctrl);

	return BLK_EH_RESET_TIMER;
}