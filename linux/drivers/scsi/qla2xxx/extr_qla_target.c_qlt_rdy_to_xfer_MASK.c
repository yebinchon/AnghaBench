#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  online; } ;
struct scsi_qla_host {TYPE_5__ flags; TYPE_4__* hw; } ;
struct qla_tgt_prm {int req_cnt; scalar_t__ pkt; int /*<<< orphan*/ * sg; struct qla_tgt* tgt; struct qla_tgt_cmd* cmd; } ;
struct TYPE_15__ {scalar_t__ prot_op; } ;
struct qla_tgt_cmd {scalar_t__ reset_count; int aborted; int cmd_sent_to_fw; int /*<<< orphan*/  ctio_flags; int /*<<< orphan*/  state; TYPE_6__ se_cmd; scalar_t__ write_data_transferred; TYPE_1__* sess; struct qla_qpair* qpair; struct qla_tgt* tgt; struct scsi_qla_host* vha; } ;
struct qla_tgt {int dummy; } ;
struct qla_qpair {scalar_t__ chip_reset; int /*<<< orphan*/  qp_lock_ptr; TYPE_9__* req; int /*<<< orphan*/  (* reqq_start_iocbs ) (struct qla_qpair*) ;int /*<<< orphan*/  fw_started; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; } ;
struct TYPE_17__ {TYPE_7__ status0; } ;
struct ctio7_to_24xx {TYPE_8__ u; } ;
typedef  int /*<<< orphan*/  prm ;
struct TYPE_18__ {int cnt; } ;
struct TYPE_12__ {TYPE_2__* tgt_ops; } ;
struct TYPE_13__ {TYPE_3__ tgt; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* handle_data ) (struct qla_tgt_cmd*) ;} ;
struct TYPE_10__ {scalar_t__ deleted; } ;

/* Variables and functions */
 int CTIO7_FLAGS_DATA_OUT ; 
 int CTIO7_FLAGS_STATUS_MODE_0 ; 
 int EAGAIN ; 
 int /*<<< orphan*/  QLA_TGT_STATE_DATA_IN ; 
 int /*<<< orphan*/  QLA_TGT_STATE_NEED_DATA ; 
 scalar_t__ TARGET_PROT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_tgt_prm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ql_dbg_async ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct qla_qpair*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,TYPE_9__*) ; 
 int FUNC6 (struct qla_qpair*,struct qla_tgt_prm*) ; 
 int FUNC7 (struct qla_qpair*,struct qla_tgt_prm*) ; 
 int FUNC8 (struct qla_qpair*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qla_tgt_prm*) ; 
 scalar_t__ FUNC10 (struct qla_tgt_prm*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_qla_host*,struct qla_tgt_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct qla_tgt_cmd*) ; 
 int /*<<< orphan*/  FUNC15 (struct qla_qpair*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int FUNC18(struct qla_tgt_cmd *cmd)
{
	struct ctio7_to_24xx *pkt;
	struct scsi_qla_host *vha = cmd->vha;
	struct qla_tgt *tgt = cmd->tgt;
	struct qla_tgt_prm prm;
	unsigned long flags = 0;
	int res = 0;
	struct qla_qpair *qpair = cmd->qpair;

	FUNC2(&prm, 0, sizeof(prm));
	prm.cmd = cmd;
	prm.tgt = tgt;
	prm.sg = NULL;
	prm.req_cnt = 1;

	/* Calculate number of entries and segments required */
	if (FUNC10(&prm) != 0)
		return -EAGAIN;

	if (!qpair->fw_started || (cmd->reset_count != qpair->chip_reset) ||
	    (cmd->sess && cmd->sess->deleted)) {
		/*
		 * Either the port is not online or this request was from
		 * previous life, just abort the processing.
		 */
		cmd->aborted = 1;
		cmd->write_data_transferred = 0;
		cmd->state = QLA_TGT_STATE_DATA_IN;
		vha->hw->tgt.tgt_ops->handle_data(cmd);
		FUNC3(ql_dbg_async, qpair, 0xe102,
			"RESET-XFR online/active/old-count/new-count = %d/%d/%d/%d.\n",
			vha->flags.online, FUNC4(vha),
			cmd->reset_count, qpair->chip_reset);
		return 0;
	}

	FUNC12(qpair->qp_lock_ptr, flags);
	/* Does F/W have an IOCBs for this request */
	res = FUNC8(qpair, prm.req_cnt);
	if (res != 0)
		goto out_unlock_free_unmap;
	if (cmd->se_cmd.prot_op)
		res = FUNC7(qpair, &prm);
	else
		res = FUNC6(qpair, &prm);

	if (FUNC16(res != 0)) {
		qpair->req->cnt += prm.req_cnt;
		goto out_unlock_free_unmap;
	}

	pkt = (struct ctio7_to_24xx *)prm.pkt;
	pkt->u.status0.flags |= FUNC0(CTIO7_FLAGS_DATA_OUT |
	    CTIO7_FLAGS_STATUS_MODE_0);

	if (cmd->se_cmd.prot_op == TARGET_PROT_NORMAL)
		FUNC9(&prm);

	cmd->state = QLA_TGT_STATE_NEED_DATA;
	cmd->cmd_sent_to_fw = 1;
	cmd->ctio_flags = FUNC1(pkt->u.status0.flags);

	/* Memory Barrier */
	FUNC17();
	if (qpair->reqq_start_iocbs)
		qpair->reqq_start_iocbs(qpair);
	else
		FUNC5(vha, qpair->req);
	FUNC13(qpair->qp_lock_ptr, flags);

	return res;

out_unlock_free_unmap:
	FUNC11(vha, cmd);
	FUNC13(qpair->qp_lock_ptr, flags);

	return res;
}