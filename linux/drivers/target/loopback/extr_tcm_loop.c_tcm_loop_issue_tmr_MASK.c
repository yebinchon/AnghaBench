#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct tcm_loop_tpg {struct tcm_loop_nexus* tl_nexus; } ;
struct tcm_loop_nexus {struct se_session* se_sess; } ;
struct se_cmd {TYPE_1__* se_tmr_req; } ;
struct tcm_loop_cmd {int /*<<< orphan*/  tmr_done; int /*<<< orphan*/  tl_sense_buf; struct se_cmd tl_se_cmd; } ;
struct se_session {int dummy; } ;
typedef  enum tcm_tmreq_table { ____Placeholder_tcm_tmreq_table } tcm_tmreq_table ;
struct TYPE_2__ {int response; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TARGET_SCF_ACK_KREF ; 
 int TMR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tcm_loop_cmd*) ; 
 struct tcm_loop_cmd* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 
 int FUNC5 (struct se_cmd*,struct se_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcm_loop_cmd_cache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tcm_loop_tpg *tl_tpg,
			      u64 lun, int task, enum tcm_tmreq_table tmr)
{
	struct se_cmd *se_cmd;
	struct se_session *se_sess;
	struct tcm_loop_nexus *tl_nexus;
	struct tcm_loop_cmd *tl_cmd;
	int ret = TMR_FUNCTION_FAILED, rc;

	/*
	 * Locate the tl_nexus and se_sess pointers
	 */
	tl_nexus = tl_tpg->tl_nexus;
	if (!tl_nexus) {
		FUNC3("Unable to perform device reset without active I_T Nexus\n");
		return ret;
	}

	tl_cmd = FUNC2(tcm_loop_cmd_cache, GFP_KERNEL);
	if (!tl_cmd)
		return ret;

	FUNC0(&tl_cmd->tmr_done);

	se_cmd = &tl_cmd->tl_se_cmd;
	se_sess = tl_tpg->tl_nexus->se_sess;

	rc = FUNC5(se_cmd, se_sess, tl_cmd->tl_sense_buf, lun,
			       NULL, tmr, GFP_KERNEL, task,
			       TARGET_SCF_ACK_KREF);
	if (rc < 0)
		goto release;
	FUNC6(&tl_cmd->tmr_done);
	ret = se_cmd->se_tmr_req->response;
	FUNC4(se_cmd);

out:
	return ret;

release:
	FUNC1(tcm_loop_cmd_cache, tl_cmd);
	goto out;
}