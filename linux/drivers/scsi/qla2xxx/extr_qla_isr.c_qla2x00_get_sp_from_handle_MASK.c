#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ sts_entry_t ;
struct req_que {size_t num_outstanding_cmds; TYPE_2__** outstanding_cmds; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_8__ {size_t handle; } ;
typedef  TYPE_2__ srb_t ;
struct TYPE_9__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FCOE_CTX_RESET_NEEDED ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,size_t,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

srb_t *
FUNC4(scsi_qla_host_t *vha, const char *func,
    struct req_que *req, void *iocb)
{
	struct qla_hw_data *ha = vha->hw;
	sts_entry_t *pkt = iocb;
	srb_t *sp = NULL;
	uint16_t index;

	index = FUNC1(pkt->handle);
	if (index >= req->num_outstanding_cmds) {
		FUNC2(ql_log_warn, vha, 0x5031,
			   "Invalid command index (%x) type %8ph.\n",
			   index, iocb);
		if (FUNC0(ha))
			FUNC3(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
		else
			FUNC3(ISP_ABORT_NEEDED, &vha->dpc_flags);
		goto done;
	}
	sp = req->outstanding_cmds[index];
	if (!sp) {
		FUNC2(ql_log_warn, vha, 0x5032,
		    "Invalid completion handle (%x) -- timed-out.\n", index);
		return sp;
	}
	if (sp->handle != index) {
		FUNC2(ql_log_warn, vha, 0x5033,
		    "SRB handle (%x) mismatch %x.\n", sp->handle, index);
		return NULL;
	}

	req->outstanding_cmds[index] = NULL;

done:
	return sp;
}