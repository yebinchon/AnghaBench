#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct se_cmd {TYPE_2__* se_tmr_req; } ;
struct vscsibk_pend {struct se_cmd se_cmd; int /*<<< orphan*/  tmr_done; int /*<<< orphan*/ * sense_buffer; TYPE_1__* v2p; } ;
struct scsiback_tpg {struct scsiback_nexus* tpg_nexus; } ;
struct scsiback_nexus {int /*<<< orphan*/  tvn_se_sess; } ;
typedef  enum tcm_tmreq_table { ____Placeholder_tcm_tmreq_table } tcm_tmreq_table ;
struct TYPE_4__ {scalar_t__ response; } ;
struct TYPE_3__ {int /*<<< orphan*/  lun; struct scsiback_tpg* tpg; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TARGET_SCF_ACK_KREF ; 
 scalar_t__ TMR_FUNCTION_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct vscsibk_pend*) ; 
 int FUNC2 (struct se_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vscsibk_pend *pending_req,
	enum tcm_tmreq_table act, int tag)
{
	struct scsiback_tpg *tpg = pending_req->v2p->tpg;
	struct scsiback_nexus *nexus = tpg->tpg_nexus;
	struct se_cmd *se_cmd = &pending_req->se_cmd;
	u64 unpacked_lun = pending_req->v2p->lun;
	int rc, err = FAILED;

	FUNC0(&pending_req->tmr_done);

	rc = FUNC2(&pending_req->se_cmd, nexus->tvn_se_sess,
			       &pending_req->sense_buffer[0],
			       unpacked_lun, NULL, act, GFP_KERNEL,
			       tag, TARGET_SCF_ACK_KREF);
	if (rc)
		goto err;

	FUNC4(&pending_req->tmr_done);

	err = (se_cmd->se_tmr_req->response == TMR_FUNCTION_COMPLETE) ?
		SUCCESS : FAILED;

	FUNC1(NULL, err, 0, pending_req);
	FUNC3(&pending_req->se_cmd, 0);
	return;

err:
	FUNC1(NULL, err, 0, pending_req);
}