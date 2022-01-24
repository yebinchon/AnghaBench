#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  void* uint16_t ;
struct TYPE_19__ {int data; void* lun; void* flags; int /*<<< orphan*/  comp; } ;
struct TYPE_20__ {TYPE_4__ tmf; } ;
struct srb_iocb {TYPE_5__ u; int /*<<< orphan*/  timeout; } ;
struct scsi_qla_host {TYPE_14__* hw; int /*<<< orphan*/  dpc_flags; } ;
struct TYPE_16__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_21__ {char* name; int /*<<< orphan*/  (* free ) (TYPE_6__*) ;int /*<<< orphan*/  handle; int /*<<< orphan*/  done; int /*<<< orphan*/  type; TYPE_1__ u; } ;
typedef  TYPE_6__ srb_t ;
struct TYPE_17__ {int /*<<< orphan*/  al_pa; int /*<<< orphan*/  area; int /*<<< orphan*/  domain; } ;
struct TYPE_18__ {TYPE_2__ b; } ;
struct TYPE_22__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  loop_id; TYPE_3__ d_id; struct scsi_qla_host* vha; } ;
typedef  TYPE_7__ fc_port_t ;
struct TYPE_15__ {int /*<<< orphan*/  base_qpair; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCF_ASYNC_SENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_14__*) ; 
 int /*<<< orphan*/  MK_SYNC_ID ; 
 int /*<<< orphan*/  MK_SYNC_ID_LUN ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SRB_TM_CMD ; 
 void* TCF_LUN_RESET ; 
 int /*<<< orphan*/  UNLOADING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 TYPE_6__* FUNC5 (struct scsi_qla_host*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  qla2x00_tmf_iocb_timeout ; 
 int /*<<< orphan*/  qla2x00_tmf_sp_done ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(fc_port_t *fcport, uint32_t flags, uint32_t lun,
	uint32_t tag)
{
	struct scsi_qla_host *vha = fcport->vha;
	struct srb_iocb *tm_iocb;
	srb_t *sp;
	int rval = QLA_FUNCTION_FAILED;

	sp = FUNC5(vha, fcport, GFP_KERNEL);
	if (!sp)
		goto done;

	tm_iocb = &sp->u.iocb_cmd;
	sp->type = SRB_TM_CMD;
	sp->name = "tmf";

	tm_iocb->timeout = qla2x00_tmf_iocb_timeout;
	FUNC1(&tm_iocb->u.tmf.comp);
	FUNC6(sp, FUNC4(vha));

	tm_iocb->u.tmf.flags = flags;
	tm_iocb->u.tmf.lun = lun;
	tm_iocb->u.tmf.data = tag;
	sp->done = qla2x00_tmf_sp_done;

	FUNC2(ql_dbg_taskm, vha, 0x802f,
	    "Async-tmf hdl=%x loop-id=%x portid=%02x%02x%02x.\n",
	    sp->handle, fcport->loop_id, fcport->d_id.b.domain,
	    fcport->d_id.b.area, fcport->d_id.b.al_pa);

	rval = FUNC8(sp);
	if (rval != QLA_SUCCESS)
		goto done_free_sp;
	FUNC11(&tm_iocb->u.tmf.comp);

	rval = tm_iocb->u.tmf.data;

	if (rval != QLA_SUCCESS) {
		FUNC3(ql_log_warn, vha, 0x8030,
		    "TM IOCB failed (%x).\n", rval);
	}

	if (!FUNC10(UNLOADING, &vha->dpc_flags) && !FUNC0(vha->hw)) {
		flags = tm_iocb->u.tmf.flags;
		lun = (uint16_t)tm_iocb->u.tmf.lun;

		/* Issue Marker IOCB */
		FUNC7(vha, vha->hw->base_qpair,
		    fcport->loop_id, lun,
		    flags == TCF_LUN_RESET ? MK_SYNC_ID_LUN : MK_SYNC_ID);
	}

done_free_sp:
	sp->free(sp);
	fcport->flags &= ~FCF_ASYNC_SENT;
done:
	return rval;
}