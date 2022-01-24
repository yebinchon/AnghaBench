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
typedef  scalar_t__ u32 ;
struct request {int dummy; } ;
struct nvme_ns {int dummy; } ;
struct nvme_fc_queue {struct nvme_fc_ctrl* ctrl; int /*<<< orphan*/  flags; } ;
struct nvme_command {int dummy; } ;
struct nvme_fc_cmd_iu {struct nvme_command sqe; } ;
struct nvme_fc_fcp_op {struct nvme_fc_cmd_iu cmd_iu; } ;
struct nvme_fc_ctrl {int /*<<< orphan*/  ctrl; TYPE_3__* rport; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct nvme_fc_queue* driver_data; TYPE_1__* queue; } ;
typedef  enum nvmefc_fcp_datadir { ____Placeholder_nvmefc_fcp_datadir } nvmefc_fcp_datadir ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_5__ {scalar_t__ port_state; } ;
struct TYPE_6__ {TYPE_2__ remoteport; } ;
struct TYPE_4__ {struct nvme_ns* queuedata; } ;

/* Variables and functions */
 scalar_t__ FC_OBJSTATE_ONLINE ; 
 int NVMEFC_FCP_NODATA ; 
 int NVMEFC_FCP_READ ; 
 int NVMEFC_FCP_WRITE ; 
 int /*<<< orphan*/  NVME_FC_Q_LIVE ; 
 scalar_t__ WRITE ; 
 struct nvme_fc_fcp_op* FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct nvme_fc_ctrl*,struct nvme_fc_queue*,struct nvme_fc_fcp_op*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct nvme_ns*,struct request*,struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct request*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct request*) ; 
 scalar_t__ FUNC7 (struct request*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t
FUNC9(struct blk_mq_hw_ctx *hctx,
			const struct blk_mq_queue_data *bd)
{
	struct nvme_ns *ns = hctx->queue->queuedata;
	struct nvme_fc_queue *queue = hctx->driver_data;
	struct nvme_fc_ctrl *ctrl = queue->ctrl;
	struct request *rq = bd->rq;
	struct nvme_fc_fcp_op *op = FUNC0(rq);
	struct nvme_fc_cmd_iu *cmdiu = &op->cmd_iu;
	struct nvme_command *sqe = &cmdiu->sqe;
	enum nvmefc_fcp_datadir	io_dir;
	bool queue_ready = FUNC8(NVME_FC_Q_LIVE, &queue->flags);
	u32 data_len;
	blk_status_t ret;

	if (ctrl->rport->remoteport.port_state != FC_OBJSTATE_ONLINE ||
	    !FUNC5(&queue->ctrl->ctrl, rq, queue_ready))
		return FUNC6(&queue->ctrl->ctrl, rq);

	ret = FUNC4(ns, rq, sqe);
	if (ret)
		return ret;

	/*
	 * nvme core doesn't quite treat the rq opaquely. Commands such
	 * as WRITE ZEROES will return a non-zero rq payload_bytes yet
	 * there is no actual payload to be transferred.
	 * To get it right, key data transmission on there being 1 or
	 * more physical segments in the sg list. If there is no
	 * physical segments, there is no payload.
	 */
	if (FUNC1(rq)) {
		data_len = FUNC2(rq);
		io_dir = ((FUNC7(rq) == WRITE) ?
					NVMEFC_FCP_WRITE : NVMEFC_FCP_READ);
	} else {
		data_len = 0;
		io_dir = NVMEFC_FCP_NODATA;
	}


	return FUNC3(ctrl, queue, op, data_len, io_dir);
}