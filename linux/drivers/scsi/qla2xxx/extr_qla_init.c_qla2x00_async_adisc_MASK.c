#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_17__ {int /*<<< orphan*/  flags; } ;
struct TYPE_18__ {TYPE_3__ logio; } ;
struct srb_iocb {TYPE_4__ u; int /*<<< orphan*/  timeout; } ;
struct TYPE_15__ {int /*<<< orphan*/  online; } ;
struct scsi_qla_host {TYPE_1__ flags; } ;
struct TYPE_16__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_20__ {char* name; int /*<<< orphan*/  (* free ) (TYPE_6__*) ;int /*<<< orphan*/  handle; int /*<<< orphan*/  done; int /*<<< orphan*/  gen2; int /*<<< orphan*/  gen1; TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_6__ srb_t ;
struct TYPE_19__ {int /*<<< orphan*/  b24; } ;
struct TYPE_21__ {int flags; int /*<<< orphan*/  port_name; TYPE_5__ d_id; int /*<<< orphan*/  loop_id; int /*<<< orphan*/  login_gen; int /*<<< orphan*/  rscn_gen; } ;
typedef  TYPE_7__ fc_port_t ;

/* Variables and functions */
 int FCF_ASYNC_ACTIVE ; 
 int FCF_ASYNC_SENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_LOGIO_LOGIN_RETRIED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SRB_ADISC_CMD ; 
 int /*<<< orphan*/  SRB_LOGIN_RETRIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_disc ; 
 int /*<<< orphan*/  qla2x00_async_adisc_sp_done ; 
 int /*<<< orphan*/  qla2x00_async_iocb_timeout ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 TYPE_6__* FUNC2 (struct scsi_qla_host*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,TYPE_7__*,int*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 

int
FUNC7(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
	srb_t *sp;
	struct srb_iocb *lio;
	int rval = QLA_FUNCTION_FAILED;

	if (!vha->flags.online || (fcport->flags & FCF_ASYNC_SENT))
		return rval;

	fcport->flags |= FCF_ASYNC_SENT;
	sp = FUNC2(vha, fcport, GFP_KERNEL);
	if (!sp)
		goto done;

	sp->type = SRB_ADISC_CMD;
	sp->name = "adisc";

	lio = &sp->u.iocb_cmd;
	lio->timeout = qla2x00_async_iocb_timeout;
	sp->gen1 = fcport->rscn_gen;
	sp->gen2 = fcport->login_gen;
	FUNC3(sp, FUNC1(vha) + 2);

	sp->done = qla2x00_async_adisc_sp_done;
	if (data[1] & QLA_LOGIO_LOGIN_RETRIED)
		lio->u.logio.flags |= SRB_LOGIN_RETRIED;

	FUNC0(ql_dbg_disc, vha, 0x206f,
	    "Async-adisc - hdl=%x loopid=%x portid=%06x %8phC.\n",
	    sp->handle, fcport->loop_id, fcport->d_id.b24, fcport->port_name);

	rval = FUNC5(sp);
	if (rval != QLA_SUCCESS)
		goto done_free_sp;

	return rval;

done_free_sp:
	sp->free(sp);
done:
	fcport->flags &= ~(FCF_ASYNC_SENT | FCF_ASYNC_ACTIVE);
	FUNC4(vha, fcport, data);
	return rval;
}