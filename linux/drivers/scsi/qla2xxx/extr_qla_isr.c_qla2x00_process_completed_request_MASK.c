#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_1__** outstanding_cmds; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* done ) (TYPE_1__*,int) ;} ;
typedef  TYPE_1__ srb_t ;

/* Variables and functions */
 int DID_OK ; 
 int /*<<< orphan*/  FCOE_CTX_RESET_NEEDED ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void
FUNC4(struct scsi_qla_host *vha,
				  struct req_que *req, uint32_t index)
{
	srb_t *sp;
	struct qla_hw_data *ha = vha->hw;

	/* Validate handle. */
	if (index >= req->num_outstanding_cmds) {
		FUNC1(ql_log_warn, vha, 0x3014,
		    "Invalid SCSI command index (%x).\n", index);

		if (FUNC0(ha))
			FUNC2(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
		else
			FUNC2(ISP_ABORT_NEEDED, &vha->dpc_flags);
		return;
	}

	sp = req->outstanding_cmds[index];
	if (sp) {
		/* Free outstanding command slot. */
		req->outstanding_cmds[index] = NULL;

		/* Save ISP completion status */
		sp->done(sp, DID_OK << 16);
	} else {
		FUNC1(ql_log_warn, vha, 0x3016, "Invalid SCSI SRB.\n");

		if (FUNC0(ha))
			FUNC2(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
		else
			FUNC2(ISP_ABORT_NEEDED, &vha->dpc_flags);
	}
}