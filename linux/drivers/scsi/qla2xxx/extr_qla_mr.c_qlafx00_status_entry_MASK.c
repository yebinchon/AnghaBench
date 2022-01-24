#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  size_t uint16_t ;
struct sts_entry_fx00 {int comp_status; int scsi_status; size_t handle; size_t sense_len; int /*<<< orphan*/ * data; int /*<<< orphan*/  residual_len; } ;
struct scsi_cmnd {unsigned int underflow; int /*<<< orphan*/  cmnd; TYPE_1__* device; int /*<<< orphan*/  sense_buffer; } ;
struct rsp_que {int /*<<< orphan*/ * status_srb; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_2__** outstanding_cmds; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct TYPE_16__ {scalar_t__ type; int /*<<< orphan*/  (* done ) (TYPE_2__*,int) ;TYPE_4__* fcport; } ;
typedef  TYPE_2__ srb_t ;
struct TYPE_17__ {int /*<<< orphan*/  host_no; int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
typedef  size_t int32_t ;
struct TYPE_18__ {int /*<<< orphan*/  tgt_id; int /*<<< orphan*/  vha; int /*<<< orphan*/  state; } ;
typedef  TYPE_4__ fc_port_t ;
typedef  int __le16 ;
struct TYPE_15__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;

/* Variables and functions */
#define  CS_ABORTED 138 
#define  CS_COMPLETE 137 
 scalar_t__ CS_DATA_OVERRUN ; 
#define  CS_DATA_UNDERRUN 136 
#define  CS_INCOMPLETE 135 
#define  CS_PORT_BUSY 134 
#define  CS_PORT_CONFIG_CHG 133 
#define  CS_PORT_LOGGED_OUT 132 
#define  CS_PORT_UNAVAILABLE 131 
#define  CS_QUEUE_FULL 130 
#define  CS_RESET 129 
#define  CS_TIMEOUT 128 
 int DID_ERROR ; 
 int DID_OK ; 
 int DID_RESET ; 
 int DID_TRANSPORT_DISRUPTED ; 
 int /*<<< orphan*/  FCS_ONLINE ; 
 struct scsi_cmnd* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (size_t) ; 
 scalar_t__ SAM_STAT_BUSY ; 
 scalar_t__ SAM_STAT_TASK_SET_FULL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 scalar_t__ SRB_TM_CMD ; 
 scalar_t__ SS_CHECK_CONDITION ; 
 scalar_t__ SS_MASK ; 
 scalar_t__ SS_RESIDUAL_OVER ; 
 scalar_t__ SS_RESIDUAL_UNDER ; 
 scalar_t__ SS_SENSE_LEN_VALID ; 
 scalar_t__ STATUS_MASK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (size_t) ; 
 int FUNC8 (int) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_io ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct req_que*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,size_t,size_t,struct rsp_que*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,struct req_que*,void*,TYPE_2__*,int,int) ; 
 size_t FUNC17 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC18 (struct scsi_cmnd*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC21(scsi_qla_host_t *vha, struct rsp_que *rsp, void *pkt)
{
	srb_t		*sp;
	fc_port_t	*fcport;
	struct scsi_cmnd *cp;
	struct sts_entry_fx00 *sts;
	__le16		comp_status;
	__le16		scsi_status;
	__le16		lscsi_status;
	int32_t		resid;
	uint32_t	sense_len, par_sense_len, rsp_info_len, resid_len,
	    fw_resid_len;
	uint8_t		*rsp_info = NULL, *sense_data = NULL;
	struct qla_hw_data *ha = vha->hw;
	uint32_t hindex, handle;
	uint16_t que;
	struct req_que *req;
	int logit = 1;
	int res = 0;

	sts = (struct sts_entry_fx00 *) pkt;

	comp_status = sts->comp_status;
	scsi_status = sts->scsi_status & FUNC7((uint16_t)SS_MASK);
	hindex = sts->handle;
	handle = FUNC3(hindex);

	que = FUNC4(hindex);
	req = ha->req_q_map[que];

	/* Validate handle. */
	if (handle < req->num_outstanding_cmds)
		sp = req->outstanding_cmds[handle];
	else
		sp = NULL;

	if (sp == NULL) {
		FUNC11(ql_dbg_io, vha, 0x3034,
		    "Invalid status handle (0x%x).\n", handle);

		FUNC19(ISP_ABORT_NEEDED, &vha->dpc_flags);
		FUNC14(vha);
		return;
	}

	if (sp->type == SRB_TM_CMD) {
		req->outstanding_cmds[handle] = NULL;
		FUNC16(vha, req, pkt, sp,
		    scsi_status, comp_status);
		return;
	}

	/* Fast path completion. */
	if (comp_status == CS_COMPLETE && scsi_status == 0) {
		FUNC13(vha, req, handle);
		return;
	}

	req->outstanding_cmds[handle] = NULL;
	cp = FUNC0(sp);
	if (cp == NULL) {
		FUNC11(ql_dbg_io, vha, 0x3048,
		    "Command already returned (0x%x/%p).\n",
		    handle, sp);

		return;
	}

	lscsi_status = scsi_status & FUNC7((uint16_t)STATUS_MASK);

	fcport = sp->fcport;

	sense_len = par_sense_len = rsp_info_len = resid_len =
		fw_resid_len = 0;
	if (scsi_status & FUNC7((uint16_t)SS_SENSE_LEN_VALID))
		sense_len = sts->sense_len;
	if (scsi_status & FUNC7(((uint16_t)SS_RESIDUAL_UNDER
	    | (uint16_t)SS_RESIDUAL_OVER)))
		resid_len = FUNC9(sts->residual_len);
	if (comp_status == FUNC7((uint16_t)CS_DATA_UNDERRUN))
		fw_resid_len = FUNC9(sts->residual_len);
	rsp_info = sense_data = sts->data;
	par_sense_len = sizeof(sts->data);

	/* Check for overrun. */
	if (comp_status == CS_COMPLETE &&
	    scsi_status & FUNC7((uint16_t)SS_RESIDUAL_OVER))
		comp_status = FUNC7((uint16_t)CS_DATA_OVERRUN);

	/*
	 * Based on Host and scsi status generate status code for Linux
	 */
	switch (FUNC8(comp_status)) {
	case CS_COMPLETE:
	case CS_QUEUE_FULL:
		if (scsi_status == 0) {
			res = DID_OK << 16;
			break;
		}
		if (scsi_status & FUNC7(((uint16_t)SS_RESIDUAL_UNDER
		    | (uint16_t)SS_RESIDUAL_OVER))) {
			resid = resid_len;
			FUNC18(cp, resid);

			if (!lscsi_status &&
			    ((unsigned)(FUNC17(cp) - resid) <
			     cp->underflow)) {
				FUNC11(ql_dbg_io, fcport->vha, 0x3050,
				    "Mid-layer underflow "
				    "detected (0x%x of 0x%x bytes).\n",
				    resid, FUNC17(cp));

				res = DID_ERROR << 16;
				break;
			}
		}
		res = DID_OK << 16 | FUNC8(lscsi_status);

		if (lscsi_status ==
		    FUNC7((uint16_t)SAM_STAT_TASK_SET_FULL)) {
			FUNC11(ql_dbg_io, fcport->vha, 0x3051,
			    "QUEUE FULL detected.\n");
			break;
		}
		logit = 0;
		if (lscsi_status != FUNC7((uint16_t)SS_CHECK_CONDITION))
			break;

		FUNC10(cp->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
		if (!(scsi_status & FUNC7((uint16_t)SS_SENSE_LEN_VALID)))
			break;

		FUNC15(sp, sense_data, par_sense_len, sense_len,
		    rsp, res);
		break;

	case CS_DATA_UNDERRUN:
		/* Use F/W calculated residual length. */
		if (FUNC1(ha) || FUNC2(ha))
			resid = fw_resid_len;
		else
			resid = resid_len;
		FUNC18(cp, resid);
		if (scsi_status & FUNC7((uint16_t)SS_RESIDUAL_UNDER)) {
			if ((FUNC1(ha) || FUNC2(ha))
			    && fw_resid_len != resid_len) {
				FUNC11(ql_dbg_io, fcport->vha, 0x3052,
				    "Dropped frame(s) detected "
				    "(0x%x of 0x%x bytes).\n",
				    resid, FUNC17(cp));

				res = DID_ERROR << 16 |
				    FUNC8(lscsi_status);
				goto check_scsi_status;
			}

			if (!lscsi_status &&
			    ((unsigned)(FUNC17(cp) - resid) <
			    cp->underflow)) {
				FUNC11(ql_dbg_io, fcport->vha, 0x3053,
				    "Mid-layer underflow "
				    "detected (0x%x of 0x%x bytes, "
				    "cp->underflow: 0x%x).\n",
				    resid, FUNC17(cp), cp->underflow);

				res = DID_ERROR << 16;
				break;
			}
		} else if (lscsi_status !=
		    FUNC7((uint16_t)SAM_STAT_TASK_SET_FULL) &&
		    lscsi_status != FUNC7((uint16_t)SAM_STAT_BUSY)) {
			/*
			 * scsi status of task set and busy are considered
			 * to be task not completed.
			 */

			FUNC11(ql_dbg_io, fcport->vha, 0x3054,
			    "Dropped frame(s) detected (0x%x "
			    "of 0x%x bytes).\n", resid,
			    FUNC17(cp));

			res = DID_ERROR << 16 | FUNC8(lscsi_status);
			goto check_scsi_status;
		} else {
			FUNC11(ql_dbg_io, fcport->vha, 0x3055,
			    "scsi_status: 0x%x, lscsi_status: 0x%x\n",
			    scsi_status, lscsi_status);
		}

		res = DID_OK << 16 | FUNC8(lscsi_status);
		logit = 0;

check_scsi_status:
		/*
		 * Check to see if SCSI Status is non zero. If so report SCSI
		 * Status.
		 */
		if (lscsi_status != 0) {
			if (lscsi_status ==
			    FUNC7((uint16_t)SAM_STAT_TASK_SET_FULL)) {
				FUNC11(ql_dbg_io, fcport->vha, 0x3056,
				    "QUEUE FULL detected.\n");
				logit = 1;
				break;
			}
			if (lscsi_status !=
			    FUNC7((uint16_t)SS_CHECK_CONDITION))
				break;

			FUNC10(cp->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
			if (!(scsi_status &
			    FUNC7((uint16_t)SS_SENSE_LEN_VALID)))
				break;

			FUNC15(sp, sense_data, par_sense_len,
			    sense_len, rsp, res);
		}
		break;

	case CS_PORT_LOGGED_OUT:
	case CS_PORT_CONFIG_CHG:
	case CS_PORT_BUSY:
	case CS_INCOMPLETE:
	case CS_PORT_UNAVAILABLE:
	case CS_TIMEOUT:
	case CS_RESET:

		/*
		 * We are going to have the fc class block the rport
		 * while we try to recover so instruct the mid layer
		 * to requeue until the class decides how to handle this.
		 */
		res = DID_TRANSPORT_DISRUPTED << 16;

		FUNC11(ql_dbg_io, fcport->vha, 0x3057,
		    "Port down status: port-state=0x%x.\n",
		    FUNC6(&fcport->state));

		if (FUNC6(&fcport->state) == FCS_ONLINE)
			FUNC12(fcport->vha, fcport, 1, 1);
		break;

	case CS_ABORTED:
		res = DID_RESET << 16;
		break;

	default:
		res = DID_ERROR << 16;
		break;
	}

	if (logit)
		FUNC11(ql_dbg_io, fcport->vha, 0x3058,
		    "FCP command status: 0x%x-0x%x (0x%x) nexus=%ld:%d:%llu "
		    "tgt_id: 0x%x lscsi_status: 0x%x cdb=%10phN len=0x%x "
		    "rsp_info=%p resid=0x%x fw_resid=0x%x sense_len=0x%x, "
		    "par_sense_len=0x%x, rsp_info_len=0x%x\n",
		    comp_status, scsi_status, res, vha->host_no,
		    cp->device->id, cp->device->lun, fcport->tgt_id,
		    lscsi_status, cp->cmnd, FUNC17(cp),
		    rsp_info, resid_len, fw_resid_len, sense_len,
		    par_sense_len, rsp_info_len);

	if (rsp->status_srb == NULL)
		sp->done(sp, res);
	else
		FUNC5(true);
}