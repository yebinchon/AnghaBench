#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct qla_qpair {int /*<<< orphan*/  qp_lock_ptr; int /*<<< orphan*/  req; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_31__ {int /*<<< orphan*/  timer; } ;
struct TYPE_32__ {TYPE_1__ iocb_cmd; } ;
struct TYPE_33__ {int type; TYPE_2__ u; scalar_t__ start_timer; struct qla_qpair* qpair; TYPE_4__* vha; } ;
typedef  TYPE_3__ srb_t ;
struct TYPE_34__ {struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
#define  SRB_ABT_CMD 147 
#define  SRB_ADISC_CMD 146 
#define  SRB_CTRL_VP 145 
#define  SRB_CT_CMD 144 
#define  SRB_CT_PTHRU_CMD 143 
#define  SRB_ELS_CMD_HST 142 
#define  SRB_ELS_CMD_RPT 141 
#define  SRB_ELS_DCMD 140 
#define  SRB_FXIOCB_BCMD 139 
#define  SRB_FXIOCB_DCMD 138 
#define  SRB_LOGIN_CMD 137 
#define  SRB_LOGOUT_CMD 136 
#define  SRB_MB_IOCB 135 
#define  SRB_NACK_LOGO 134 
#define  SRB_NACK_PLOGI 133 
#define  SRB_NACK_PRLI 132 
#define  SRB_NVME_LS 131 
#define  SRB_PRLI_CMD 130 
#define  SRB_PRLO_CMD 129 
#define  SRB_TM_CMD 128 
 void* FUNC2 (struct qla_qpair*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC30 () ; 

int
FUNC31(srb_t *sp)
{
	int rval = QLA_SUCCESS;
	scsi_qla_host_t *vha = sp->vha;
	struct qla_hw_data *ha = vha->hw;
	struct qla_qpair *qp = sp->qpair;
	void *pkt;
	unsigned long flags;

	FUNC28(qp->qp_lock_ptr, flags);
	pkt = FUNC2(sp->qpair, sp);
	if (!pkt) {
		rval = EAGAIN;
		FUNC4(ql_log_warn, vha, 0x700c,
		    "qla2x00_alloc_iocbs failed.\n");
		goto done;
	}

	switch (sp->type) {
	case SRB_LOGIN_CMD:
		FUNC0(ha) ?
		    FUNC10(sp, pkt) :
		    FUNC19(sp, pkt);
		break;
	case SRB_PRLI_CMD:
		FUNC12(sp, pkt);
		break;
	case SRB_LOGOUT_CMD:
		FUNC0(ha) ?
		    FUNC11(sp, pkt) :
		    FUNC20(sp, pkt);
		break;
	case SRB_ELS_CMD_RPT:
	case SRB_ELS_CMD_HST:
		FUNC8(sp, pkt);
		break;
	case SRB_CT_CMD:
		FUNC0(ha) ?
		    FUNC7(sp, pkt) :
		    FUNC17(sp, pkt);
		break;
	case SRB_ADISC_CMD:
		FUNC0(ha) ?
		    FUNC6(sp, pkt) :
		    FUNC16(sp, pkt);
		break;
	case SRB_TM_CMD:
		FUNC1(ha) ?
		    FUNC27(sp, pkt) :
		    FUNC14(sp, pkt);
		break;
	case SRB_FXIOCB_DCMD:
	case SRB_FXIOCB_BCMD:
		FUNC26(sp, pkt);
		break;
	case SRB_NVME_LS:
		FUNC24(sp, pkt);
		break;
	case SRB_ABT_CMD:
		FUNC1(ha) ?
			FUNC25(sp, pkt) :
			FUNC5(sp, pkt);
		break;
	case SRB_ELS_DCMD:
		FUNC9(sp, pkt);
		break;
	case SRB_CT_PTHRU_CMD:
		FUNC18(sp, pkt);
		break;
	case SRB_MB_IOCB:
		FUNC21(sp, pkt);
		break;
	case SRB_NACK_PLOGI:
	case SRB_NACK_PRLI:
	case SRB_NACK_LOGO:
		FUNC22(sp, pkt);
		break;
	case SRB_CTRL_VP:
		FUNC15(sp, pkt);
		break;
	case SRB_PRLO_CMD:
		FUNC13(sp, pkt);
		break;
	default:
		break;
	}

	if (sp->start_timer)
		FUNC3(&sp->u.iocb_cmd.timer);

	FUNC30();
	FUNC23(vha, qp->req);
done:
	FUNC29(qp->qp_lock_ptr, flags);
	return rval;
}