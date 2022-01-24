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
union nvme_result {int /*<<< orphan*/  u64; } ;
struct request {int dummy; } ;
struct nvmefc_fcp_req {int status; int rcv_rsplen; int /*<<< orphan*/  transferred_length; int /*<<< orphan*/  rspdma; } ;
struct nvme_fc_queue {TYPE_6__* ctrl; } ;
struct nvme_completion {scalar_t__ status; union nvme_result result; int /*<<< orphan*/  command_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  status_code; int /*<<< orphan*/  xfrd_len; int /*<<< orphan*/  iu_len; struct nvme_completion cqe; } ;
struct TYPE_10__ {int /*<<< orphan*/  command_id; } ;
struct nvme_command {TYPE_4__ common; } ;
struct TYPE_8__ {int /*<<< orphan*/  data_len; struct nvme_command sqe; } ;
struct nvme_fc_fcp_op {int flags; int /*<<< orphan*/  state; TYPE_3__ rsp_iu; TYPE_2__ cmd_iu; struct nvmefc_fcp_req fcp_req; struct nvme_fc_queue* queue; struct nvme_fc_ctrl* ctrl; struct request* rq; } ;
struct nvme_fc_ersp_iu {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  device; } ;
struct nvme_fc_ctrl {int /*<<< orphan*/  cnum; TYPE_5__ ctrl; TYPE_1__* lport; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_12__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FCOP_FLAGS_AEN ; 
 int FCPOP_STATE_ABORTED ; 
 int /*<<< orphan*/  FCPOP_STATE_COMPLETE ; 
 int /*<<< orphan*/  FCPOP_STATE_IDLE ; 
#define  NVME_FC_SIZEOF_ZEROS_RSP 128 
 int NVME_SC_HOST_PATH_ERROR ; 
 int NVME_SC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_fc_ctrl*,struct nvme_fc_fcp_op*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct nvme_fc_fcp_op* FUNC8 (struct nvmefc_fcp_req*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,union nvme_result*) ; 
 int /*<<< orphan*/  FUNC10 (struct request*,scalar_t__,union nvme_result) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_fc_ctrl*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct nvmefc_fcp_req *req)
{
	struct nvme_fc_fcp_op *op = FUNC8(req);
	struct request *rq = op->rq;
	struct nvmefc_fcp_req *freq = &op->fcp_req;
	struct nvme_fc_ctrl *ctrl = op->ctrl;
	struct nvme_fc_queue *queue = op->queue;
	struct nvme_completion *cqe = &op->rsp_iu.cqe;
	struct nvme_command *sqe = &op->cmd_iu.sqe;
	__le16 status = FUNC5(NVME_SC_SUCCESS << 1);
	union nvme_result result;
	bool terminate_assoc = true;
	int opstate;

	/*
	 * WARNING:
	 * The current linux implementation of a nvme controller
	 * allocates a single tag set for all io queues and sizes
	 * the io queues to fully hold all possible tags. Thus, the
	 * implementation does not reference or care about the sqhd
	 * value as it never needs to use the sqhd/sqtail pointers
	 * for submission pacing.
	 *
	 * This affects the FC-NVME implementation in two ways:
	 * 1) As the value doesn't matter, we don't need to waste
	 *    cycles extracting it from ERSPs and stamping it in the
	 *    cases where the transport fabricates CQEs on successful
	 *    completions.
	 * 2) The FC-NVME implementation requires that delivery of
	 *    ERSP completions are to go back to the nvme layer in order
	 *    relative to the rsn, such that the sqhd value will always
	 *    be "in order" for the nvme layer. As the nvme layer in
	 *    linux doesn't care about sqhd, there's no need to return
	 *    them in order.
	 *
	 * Additionally:
	 * As the core nvme layer in linux currently does not look at
	 * every field in the cqe - in cases where the FC transport must
	 * fabricate a CQE, the following fields will not be set as they
	 * are not referenced:
	 *      cqe.sqid,  cqe.sqhd,  cqe.command_id
	 *
	 * Failure or error of an individual i/o, in a transport
	 * detected fashion unrelated to the nvme completion status,
	 * potentially cause the initiator and target sides to get out
	 * of sync on SQ head/tail (aka outstanding io count allowed).
	 * Per FC-NVME spec, failure of an individual command requires
	 * the connection to be terminated, which in turn requires the
	 * association to be terminated.
	 */

	opstate = FUNC2(&op->state, FCPOP_STATE_COMPLETE);

	FUNC7(ctrl->lport->dev, op->fcp_req.rspdma,
				sizeof(op->rsp_iu), DMA_FROM_DEVICE);

	if (opstate == FCPOP_STATE_ABORTED)
		status = FUNC5(NVME_SC_HOST_PATH_ERROR << 1);
	else if (freq->status) {
		status = FUNC5(NVME_SC_HOST_PATH_ERROR << 1);
		FUNC6(ctrl->ctrl.device,
			"NVME-FC{%d}: io failed due to lldd error %d\n",
			ctrl->cnum, freq->status);
	}

	/*
	 * For the linux implementation, if we have an unsuccesful
	 * status, they blk-mq layer can typically be called with the
	 * non-zero status and the content of the cqe isn't important.
	 */
	if (status)
		goto done;

	/*
	 * command completed successfully relative to the wire
	 * protocol. However, validate anything received and
	 * extract the status and result from the cqe (create it
	 * where necessary).
	 */

	switch (freq->rcv_rsplen) {

	case 0:
	case NVME_FC_SIZEOF_ZEROS_RSP:
		/*
		 * No response payload or 12 bytes of payload (which
		 * should all be zeros) are considered successful and
		 * no payload in the CQE by the transport.
		 */
		if (freq->transferred_length !=
		    FUNC4(op->cmd_iu.data_len)) {
			status = FUNC5(NVME_SC_HOST_PATH_ERROR << 1);
			FUNC6(ctrl->ctrl.device,
				"NVME-FC{%d}: io failed due to bad transfer "
				"length: %d vs expected %d\n",
				ctrl->cnum, freq->transferred_length,
				FUNC4(op->cmd_iu.data_len));
			goto done;
		}
		result.u64 = 0;
		break;

	case sizeof(struct nvme_fc_ersp_iu):
		/*
		 * The ERSP IU contains a full completion with CQE.
		 * Validate ERSP IU and look at cqe.
		 */
		if (FUNC13(FUNC3(op->rsp_iu.iu_len) !=
					(freq->rcv_rsplen / 4) ||
			     FUNC4(op->rsp_iu.xfrd_len) !=
					freq->transferred_length ||
			     op->rsp_iu.status_code ||
			     sqe->common.command_id != cqe->command_id)) {
			status = FUNC5(NVME_SC_HOST_PATH_ERROR << 1);
			FUNC6(ctrl->ctrl.device,
				"NVME-FC{%d}: io failed due to bad NVMe_ERSP: "
				"iu len %d, xfr len %d vs %d, status code "
				"%d, cmdid %d vs %d\n",
				ctrl->cnum, FUNC3(op->rsp_iu.iu_len),
				FUNC4(op->rsp_iu.xfrd_len),
				freq->transferred_length,
				op->rsp_iu.status_code,
				sqe->common.command_id,
				cqe->command_id);
			goto done;
		}
		result = cqe->result;
		status = cqe->status;
		break;

	default:
		status = FUNC5(NVME_SC_HOST_PATH_ERROR << 1);
		FUNC6(ctrl->ctrl.device,
			"NVME-FC{%d}: io failed due to odd NVMe_xRSP iu "
			"len %d\n",
			ctrl->cnum, freq->rcv_rsplen);
		goto done;
	}

	terminate_assoc = false;

done:
	if (op->flags & FCOP_FLAGS_AEN) {
		FUNC9(&queue->ctrl->ctrl, status, &result);
		FUNC0(ctrl, op, opstate);
		FUNC1(&op->state, FCPOP_STATE_IDLE);
		op->flags = FCOP_FLAGS_AEN;	/* clear other flags */
		FUNC11(ctrl);
		goto check_error;
	}

	FUNC0(ctrl, op, opstate);
	FUNC10(rq, status, result);

check_error:
	if (terminate_assoc)
		FUNC12(ctrl, "transport detected io error");
}