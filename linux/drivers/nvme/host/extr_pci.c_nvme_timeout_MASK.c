#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct request {int /*<<< orphan*/  q; int /*<<< orphan*/ * end_io_data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  tag; } ;
struct nvme_queue {int /*<<< orphan*/  qid; struct nvme_dev* dev; } ;
struct nvme_iod {int aborted; struct nvme_queue* nvmeq; } ;
struct TYPE_6__ {int state; int /*<<< orphan*/  abort_limit; int /*<<< orphan*/  admin_q; int /*<<< orphan*/  device; } ;
struct nvme_dev {TYPE_2__ ctrl; int /*<<< orphan*/  dev; scalar_t__ bar; } ;
struct TYPE_5__ {int /*<<< orphan*/  sqid; int /*<<< orphan*/  cid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ abort; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMIN_TIMEOUT ; 
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 int /*<<< orphan*/  BLK_MQ_REQ_NOWAIT ; 
 scalar_t__ FUNC0 (struct request*) ; 
#define  NVME_CTRL_CONNECTING 130 
#define  NVME_CTRL_DELETING 129 
#define  NVME_CTRL_RESETTING 128 
 int /*<<< orphan*/  NVME_QID_ANY ; 
 scalar_t__ NVME_REG_CSTS ; 
 int /*<<< orphan*/  NVME_REQ_CANCELLED ; 
 int /*<<< orphan*/  abort_endio ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nvme_iod* FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_abort_cmd ; 
 struct request* FUNC10 (int /*<<< orphan*/ ,struct nvme_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_dev*,int) ; 
 scalar_t__ FUNC13 (struct nvme_queue*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (struct request*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (struct nvme_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nvme_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum blk_eh_timer_return FUNC21(struct request *req, bool reserved)
{
	struct nvme_iod *iod = FUNC4(req);
	struct nvme_queue *nvmeq = iod->nvmeq;
	struct nvme_dev *dev = nvmeq->dev;
	struct request *abort_req;
	struct nvme_command cmd;
	u32 csts = FUNC19(dev->bar + NVME_REG_CSTS);

	/* If PCI error recovery process is happening, we cannot reset or
	 * the recovery mechanism will surely fail.
	 */
	FUNC8();
	if (FUNC18(FUNC20(dev->dev)))
		return BLK_EH_RESET_TIMER;

	/*
	 * Reset immediately if the controller is failed
	 */
	if (FUNC16(dev, csts)) {
		FUNC17(dev, csts);
		FUNC12(dev, false);
		FUNC15(&dev->ctrl);
		return BLK_EH_DONE;
	}

	/*
	 * Did we miss an interrupt?
	 */
	if (FUNC13(nvmeq, req->tag)) {
		FUNC6(dev->ctrl.device,
			 "I/O %d QID %d timeout, completion polled\n",
			 req->tag, nvmeq->qid);
		return BLK_EH_DONE;
	}

	/*
	 * Shutdown immediately if controller times out while starting. The
	 * reset work will see the pci device disabled when it gets the forced
	 * cancellation error. All outstanding requests are completed on
	 * shutdown, so we return BLK_EH_DONE.
	 */
	switch (dev->ctrl.state) {
	case NVME_CTRL_CONNECTING:
		FUNC11(&dev->ctrl, NVME_CTRL_DELETING);
		/* fall through */
	case NVME_CTRL_DELETING:
		FUNC7(dev->ctrl.device,
			 "I/O %d QID %d timeout, disable controller\n",
			 req->tag, nvmeq->qid);
		FUNC12(dev, true);
		FUNC14(req)->flags |= NVME_REQ_CANCELLED;
		return BLK_EH_DONE;
	case NVME_CTRL_RESETTING:
		return BLK_EH_RESET_TIMER;
	default:
		break;
	}

	/*
 	 * Shutdown the controller immediately and schedule a reset if the
 	 * command was already aborted once before and still hasn't been
 	 * returned to the driver, or if this is the admin queue.
	 */
	if (!nvmeq->qid || iod->aborted) {
		FUNC6(dev->ctrl.device,
			 "I/O %d QID %d timeout, reset controller\n",
			 req->tag, nvmeq->qid);
		FUNC12(dev, false);
		FUNC15(&dev->ctrl);

		FUNC14(req)->flags |= NVME_REQ_CANCELLED;
		return BLK_EH_DONE;
	}

	if (FUNC1(&dev->ctrl.abort_limit) < 0) {
		FUNC2(&dev->ctrl.abort_limit);
		return BLK_EH_RESET_TIMER;
	}
	iod->aborted = 1;

	FUNC9(&cmd, 0, sizeof(cmd));
	cmd.abort.opcode = nvme_admin_abort_cmd;
	cmd.abort.cid = req->tag;
	cmd.abort.sqid = FUNC5(nvmeq->qid);

	FUNC6(nvmeq->dev->ctrl.device,
		"I/O %d QID %d timeout, aborting\n",
		 req->tag, nvmeq->qid);

	abort_req = FUNC10(dev->ctrl.admin_q, &cmd,
			BLK_MQ_REQ_NOWAIT, NVME_QID_ANY);
	if (FUNC0(abort_req)) {
		FUNC2(&dev->ctrl.abort_limit);
		return BLK_EH_RESET_TIMER;
	}

	abort_req->timeout = ADMIN_TIMEOUT;
	abort_req->end_io_data = NULL;
	FUNC3(abort_req->q, NULL, abort_req, 0, abort_endio);

	/*
	 * The aborted req will be completed on receiving the abort req.
	 * We enable the timer again. If hit twice, it'll cause a device reset,
	 * as the device then is in a faulty state.
	 */
	return BLK_EH_RESET_TIMER;
}