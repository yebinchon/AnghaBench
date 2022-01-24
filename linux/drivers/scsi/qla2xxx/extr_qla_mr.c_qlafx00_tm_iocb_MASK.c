#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct tsk_mgmt_entry_fx00 {int entry_count; void* control_flags; int /*<<< orphan*/  lun; int /*<<< orphan*/  tgt_id; scalar_t__ reserved_0; void* handle; int /*<<< orphan*/  entry_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {TYPE_3__ tmf; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct scsi_lun {int dummy; } ;
struct req_que {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_12__ {TYPE_2__* fcport; int /*<<< orphan*/  handle; TYPE_6__* vha; TYPE_1__ u; } ;
typedef  TYPE_5__ srb_t ;
struct TYPE_13__ {struct req_que* req; } ;
typedef  TYPE_6__ scsi_qla_host_t ;
struct TYPE_9__ {int /*<<< orphan*/  tgt_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TCF_LUN_RESET ; 
 int /*<<< orphan*/  TSK_MGMT_IOCB_TYPE_FX00 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct tsk_mgmt_entry_fx00*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tsk_mgmt_entry_fx00*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(srb_t *sp, struct tsk_mgmt_entry_fx00 *ptm_iocb)
{
	struct srb_iocb *fxio = &sp->u.iocb_cmd;
	scsi_qla_host_t *vha = sp->vha;
	struct req_que *req = vha->req;
	struct tsk_mgmt_entry_fx00 tm_iocb;
	struct scsi_lun llun;

	FUNC6(&tm_iocb, 0, sizeof(struct tsk_mgmt_entry_fx00));
	tm_iocb.entry_type = TSK_MGMT_IOCB_TYPE_FX00;
	tm_iocb.entry_count = 1;
	tm_iocb.handle = FUNC2(FUNC0(req->id, sp->handle));
	tm_iocb.reserved_0 = 0;
	tm_iocb.tgt_id = FUNC1(sp->fcport->tgt_id);
	tm_iocb.control_flags = FUNC2(fxio->u.tmf.flags);
	if (tm_iocb.control_flags == FUNC2((uint32_t)TCF_LUN_RESET)) {
		FUNC4(fxio->u.tmf.lun, &llun);
		FUNC3((uint8_t *)&llun, (uint8_t *)&tm_iocb.lun,
		    sizeof(struct scsi_lun));
	}

	FUNC5((void *)ptm_iocb, &tm_iocb,
	    sizeof(struct tsk_mgmt_entry_fx00));
	FUNC7();
}