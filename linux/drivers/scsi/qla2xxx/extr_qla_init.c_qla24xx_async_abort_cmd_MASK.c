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
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ comp_status; int /*<<< orphan*/  comp; int /*<<< orphan*/  req_que_no; int /*<<< orphan*/  cmd_hndl; } ;
struct TYPE_16__ {TYPE_3__ abt; } ;
struct srb_iocb {TYPE_4__ u; int /*<<< orphan*/  timeout; } ;
struct TYPE_13__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_17__ {char* name; int /*<<< orphan*/  (* free ) (TYPE_5__*) ;int /*<<< orphan*/  type; int /*<<< orphan*/  handle; int /*<<< orphan*/  done; TYPE_9__* qpair; int /*<<< orphan*/  flags; TYPE_1__ u; int /*<<< orphan*/  fcport; int /*<<< orphan*/ * vha; } ;
typedef  TYPE_5__ srb_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
struct TYPE_18__ {TYPE_2__* req; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ CS_COMPLETE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SRB_ABT_CMD ; 
 int /*<<< orphan*/  SRB_WAKEUP_ON_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_async ; 
 int /*<<< orphan*/  qla24xx_abort_iocb_timeout ; 
 int /*<<< orphan*/  qla24xx_abort_sp_done ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(srb_t *cmd_sp, bool wait)
{
	scsi_qla_host_t *vha = cmd_sp->vha;
	struct srb_iocb *abt_iocb;
	srb_t *sp;
	int rval = QLA_FUNCTION_FAILED;

	sp = FUNC5(cmd_sp->vha, cmd_sp->qpair, cmd_sp->fcport,
				  GFP_ATOMIC);
	if (!sp)
		return rval;

	abt_iocb = &sp->u.iocb_cmd;
	sp->type = SRB_ABT_CMD;
	sp->name = "abort";
	sp->qpair = cmd_sp->qpair;
	if (wait)
		sp->flags = SRB_WAKEUP_ON_COMP;

	abt_iocb->timeout = qla24xx_abort_iocb_timeout;
	FUNC1(&abt_iocb->u.abt.comp);
	/* FW can send 2 x ABTS's timeout/20s */
	FUNC3(sp, 42);

	abt_iocb->u.abt.cmd_hndl = cmd_sp->handle;
	abt_iocb->u.abt.req_que_no = FUNC0(cmd_sp->qpair->req->id);

	sp->done = qla24xx_abort_sp_done;

	FUNC2(ql_dbg_async, vha, 0x507c,
	       "Abort command issued - hdl=%x, type=%x\n", cmd_sp->handle,
	       cmd_sp->type);

	rval = FUNC4(sp);
	if (rval != QLA_SUCCESS) {
		sp->free(sp);
		return rval;
	}

	if (wait) {
		FUNC8(&abt_iocb->u.abt.comp);
		rval = abt_iocb->u.abt.comp_status == CS_COMPLETE ?
			QLA_SUCCESS : QLA_FUNCTION_FAILED;
		sp->free(sp);
	}

	return rval;
}