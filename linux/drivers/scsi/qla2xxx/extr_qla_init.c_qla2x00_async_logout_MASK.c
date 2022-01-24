#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct srb_iocb {int /*<<< orphan*/  timeout; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_12__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {char* name; int /*<<< orphan*/  (* free ) (TYPE_4__*) ;int /*<<< orphan*/  handle; int /*<<< orphan*/  done; TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ srb_t ;
struct TYPE_13__ {int /*<<< orphan*/  al_pa; int /*<<< orphan*/  area; int /*<<< orphan*/  domain; } ;
struct TYPE_14__ {TYPE_2__ b; } ;
struct TYPE_16__ {int flags; int /*<<< orphan*/  port_name; TYPE_3__ d_id; int /*<<< orphan*/  loop_id; } ;
typedef  TYPE_5__ fc_port_t ;

/* Variables and functions */
 int FCF_ASYNC_ACTIVE ; 
 int FCF_ASYNC_SENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SRB_LOGOUT_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_disc ; 
 int /*<<< orphan*/  qla2x00_async_iocb_timeout ; 
 int /*<<< orphan*/  qla2x00_async_logout_sp_done ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 TYPE_4__* FUNC2 (struct scsi_qla_host*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

int
FUNC6(struct scsi_qla_host *vha, fc_port_t *fcport)
{
	srb_t *sp;
	struct srb_iocb *lio;
	int rval = QLA_FUNCTION_FAILED;

	fcport->flags |= FCF_ASYNC_SENT;
	sp = FUNC2(vha, fcport, GFP_KERNEL);
	if (!sp)
		goto done;

	sp->type = SRB_LOGOUT_CMD;
	sp->name = "logout";

	lio = &sp->u.iocb_cmd;
	lio->timeout = qla2x00_async_iocb_timeout;
	FUNC3(sp, FUNC1(vha) + 2);

	sp->done = qla2x00_async_logout_sp_done;

	FUNC0(ql_dbg_disc, vha, 0x2070,
	    "Async-logout - hdl=%x loop-id=%x portid=%02x%02x%02x %8phC.\n",
	    sp->handle, fcport->loop_id, fcport->d_id.b.domain,
		fcport->d_id.b.area, fcport->d_id.b.al_pa,
		fcport->port_name);

	rval = FUNC4(sp);
	if (rval != QLA_SUCCESS)
		goto done_free_sp;
	return rval;

done_free_sp:
	sp->free(sp);
done:
	fcport->flags &= ~(FCF_ASYNC_SENT | FCF_ASYNC_ACTIVE);
	return rval;
}