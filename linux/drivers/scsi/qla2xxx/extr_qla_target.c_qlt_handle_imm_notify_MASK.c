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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_5__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {int host_no; int /*<<< orphan*/  vp_idx; TYPE_1__ vha_tgt; struct qla_hw_data* hw; } ;
struct TYPE_7__ {int task_flags; int /*<<< orphan*/  lun; int /*<<< orphan*/  seq_id; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {int /*<<< orphan*/  status_subcode; int /*<<< orphan*/  nport_handle; } ;
struct TYPE_8__ {TYPE_3__ isp2x; TYPE_2__ isp24; } ;
struct imm_ntfy_from_isp {TYPE_4__ u; } ;
struct qla_tgt {int link_reinit_iocb_pending; struct imm_ntfy_from_isp link_reinit_iocb; } ;
struct qla_hw_data {int /*<<< orphan*/  base_qpair; int /*<<< orphan*/  hardware_lock; } ;
struct atio_from_isp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*,struct atio_from_isp*) ; 
#define  IMM_NTFY_ABORT_TASK 138 
#define  IMM_NTFY_ELS 137 
#define  IMM_NTFY_GLBL_LOGO 136 
#define  IMM_NTFY_GLBL_TPRLO 135 
#define  IMM_NTFY_IOCB_OVERFLOW 134 
#define  IMM_NTFY_LIP_LINK_REINIT 133 
#define  IMM_NTFY_LIP_RESET 132 
#define  IMM_NTFY_MSG_RX 131 
#define  IMM_NTFY_PORT_CONFIG 130 
#define  IMM_NTFY_PORT_LOGOUT 129 
#define  IMM_NTFY_RESOURCE 128 
 int /*<<< orphan*/  QLA_TGT_ABORT_ALL ; 
 int /*<<< orphan*/  QLA_TGT_NEXUS_LOSS ; 
 int /*<<< orphan*/  QLA_TGT_NEXUS_LOSS_SESS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct imm_ntfy_from_isp*,struct imm_ntfy_from_isp*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ql_dbg_tgt_mgt ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,struct imm_ntfy_from_isp*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,struct imm_ntfy_from_isp*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,struct imm_ntfy_from_isp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct imm_ntfy_from_isp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct scsi_qla_host *vha,
	struct imm_ntfy_from_isp *iocb)
{
	struct qla_hw_data *ha = vha->hw;
	uint32_t add_flags = 0;
	int send_notify_ack = 1;
	uint16_t status;

	FUNC2(&ha->hardware_lock);

	status = FUNC1(iocb->u.isp2x.status);
	switch (status) {
	case IMM_NTFY_LIP_RESET:
	{
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf032,
		    "qla_target(%d): LIP reset (loop %#x), subcode %x\n",
		    vha->vp_idx, FUNC1(iocb->u.isp24.nport_handle),
		    iocb->u.isp24.status_subcode);

		if (FUNC7(vha, iocb, QLA_TGT_ABORT_ALL) == 0)
			send_notify_ack = 0;
		break;
	}

	case IMM_NTFY_LIP_LINK_REINIT:
	{
		struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;

		FUNC4(ql_dbg_tgt_mgt, vha, 0xf033,
		    "qla_target(%d): LINK REINIT (loop %#x, "
		    "subcode %x)\n", vha->vp_idx,
		    FUNC1(iocb->u.isp24.nport_handle),
		    iocb->u.isp24.status_subcode);
		if (tgt->link_reinit_iocb_pending) {
			FUNC8(ha->base_qpair,
			    &tgt->link_reinit_iocb, 0, 0, 0, 0, 0, 0);
		}
		FUNC3(&tgt->link_reinit_iocb, iocb, sizeof(*iocb));
		tgt->link_reinit_iocb_pending = 1;
		/*
		 * QLogic requires to wait after LINK REINIT for possible
		 * PDISC or ADISC ELS commands
		 */
		send_notify_ack = 0;
		break;
	}

	case IMM_NTFY_PORT_LOGOUT:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf034,
		    "qla_target(%d): Port logout (loop "
		    "%#x, subcode %x)\n", vha->vp_idx,
		    FUNC1(iocb->u.isp24.nport_handle),
		    iocb->u.isp24.status_subcode);

		if (FUNC7(vha, iocb, QLA_TGT_NEXUS_LOSS_SESS) == 0)
			send_notify_ack = 0;
		/* The sessions will be cleared in the callback, if needed */
		break;

	case IMM_NTFY_GLBL_TPRLO:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf035,
		    "qla_target(%d): Global TPRLO (%x)\n", vha->vp_idx, status);
		if (FUNC7(vha, iocb, QLA_TGT_NEXUS_LOSS) == 0)
			send_notify_ack = 0;
		/* The sessions will be cleared in the callback, if needed */
		break;

	case IMM_NTFY_PORT_CONFIG:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf036,
		    "qla_target(%d): Port config changed (%x)\n", vha->vp_idx,
		    status);
		if (FUNC7(vha, iocb, QLA_TGT_ABORT_ALL) == 0)
			send_notify_ack = 0;
		/* The sessions will be cleared in the callback, if needed */
		break;

	case IMM_NTFY_GLBL_LOGO:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf06a,
		    "qla_target(%d): Link failure detected\n",
		    vha->vp_idx);
		/* I_T nexus loss */
		if (FUNC7(vha, iocb, QLA_TGT_NEXUS_LOSS) == 0)
			send_notify_ack = 0;
		break;

	case IMM_NTFY_IOCB_OVERFLOW:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf06b,
		    "qla_target(%d): Cannot provide requested "
		    "capability (IOCB overflowed the immediate notify "
		    "resource count)\n", vha->vp_idx);
		break;

	case IMM_NTFY_ABORT_TASK:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf037,
		    "qla_target(%d): Abort Task (S %08x I %#x -> "
		    "L %#x)\n", vha->vp_idx,
		    FUNC1(iocb->u.isp2x.seq_id),
		    FUNC0(ha, (struct atio_from_isp *)iocb),
		    FUNC1(iocb->u.isp2x.lun));
		if (FUNC6(vha, iocb) == 0)
			send_notify_ack = 0;
		break;

	case IMM_NTFY_RESOURCE:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf06c,
		    "qla_target(%d): Out of resources, host %ld\n",
		    vha->vp_idx, vha->host_no);
		break;

	case IMM_NTFY_MSG_RX:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf038,
		    "qla_target(%d): Immediate notify task %x\n",
		    vha->vp_idx, iocb->u.isp2x.task_flags);
		break;

	case IMM_NTFY_ELS:
		if (FUNC5(vha, iocb) == 0)
			send_notify_ack = 0;
		break;
	default:
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf06d,
		    "qla_target(%d): Received unknown immediate "
		    "notify status %x\n", vha->vp_idx, status);
		break;
	}

	if (send_notify_ack)
		FUNC8(ha->base_qpair, iocb, add_flags, 0, 0, 0,
		    0, 0);
}