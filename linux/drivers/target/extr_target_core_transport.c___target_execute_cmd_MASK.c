#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct se_cmd {int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  transport_state; scalar_t__ (* execute_cmd ) (struct se_cmd*) ;int /*<<< orphan*/  scsi_status; } ;
typedef  scalar_t__ sense_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_T_SENT ; 
 int /*<<< orphan*/  SAM_STAT_RESERVATION_CONFLICT ; 
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct se_cmd*) ; 
 scalar_t__ FUNC3 (struct se_cmd*) ; 
 scalar_t__ FUNC4 (struct se_cmd*) ; 
 scalar_t__ FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*,scalar_t__) ; 

void FUNC7(struct se_cmd *cmd, bool do_checks)
{
	sense_reason_t ret;

	if (!cmd->execute_cmd) {
		ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
		goto err;
	}
	if (do_checks) {
		/*
		 * Check for an existing UNIT ATTENTION condition after
		 * target_handle_task_attr() has done SAM task attr
		 * checking, and possibly have already defered execution
		 * out to target_restart_delayed_cmds() context.
		 */
		ret = FUNC5(cmd);
		if (ret)
			goto err;

		ret = FUNC3(cmd);
		if (ret)
			goto err;

		ret = FUNC4(cmd);
		if (ret) {
			cmd->scsi_status = SAM_STAT_RESERVATION_CONFLICT;
			goto err;
		}
	}

	ret = cmd->execute_cmd(cmd);
	if (!ret)
		return;
err:
	FUNC0(&cmd->t_state_lock);
	cmd->transport_state &= ~CMD_T_SENT;
	FUNC1(&cmd->t_state_lock);

	FUNC6(cmd, ret);
}