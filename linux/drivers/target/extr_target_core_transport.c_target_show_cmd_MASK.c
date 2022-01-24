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
typedef  int /*<<< orphan*/  u8 ;
struct se_tmr_req {int /*<<< orphan*/  ref_task_tag; int /*<<< orphan*/  function; } ;
struct se_cmd {int se_cmd_flags; int /*<<< orphan*/  cmd_kref; int /*<<< orphan*/  t_state; TYPE_1__* se_tfo; int /*<<< orphan*/  tag; int /*<<< orphan*/  data_length; int /*<<< orphan*/  data_direction; struct se_tmr_req* se_tmr_req; int /*<<< orphan*/ * t_task_cdb; int /*<<< orphan*/  transport_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_cmd_state ) (struct se_cmd*) ;} ;

/* Variables and functions */
 int SCF_SCSI_TMR_CDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(const char *pfx, struct se_cmd *cmd)
{
	char *ts_str = FUNC8(cmd->transport_state);
	const u8 *cdb = cmd->t_task_cdb;
	struct se_tmr_req *tmf = cmd->se_tmr_req;

	if (!(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)) {
		FUNC4("%scmd %#02x:%#02x with tag %#llx dir %s i_state %d t_state %s len %d refcnt %d transport_state %s\n",
			 pfx, cdb[0], cdb[1], cmd->tag,
			 FUNC1(cmd->data_direction),
			 cmd->se_tfo->get_cmd_state(cmd),
			 FUNC0(cmd->t_state), cmd->data_length,
			 FUNC3(&cmd->cmd_kref), ts_str);
	} else {
		FUNC4("%stmf %s with tag %#llx ref_task_tag %#llx i_state %d t_state %s refcnt %d transport_state %s\n",
			 pfx, FUNC7(tmf->function), cmd->tag,
			 tmf->ref_task_tag, cmd->se_tfo->get_cmd_state(cmd),
			 FUNC0(cmd->t_state),
			 FUNC3(&cmd->cmd_kref), ts_str);
	}
	FUNC2(ts_str);
}