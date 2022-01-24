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
struct se_cmd {int /*<<< orphan*/  transport_state; int /*<<< orphan*/  t_state; int /*<<< orphan*/  se_lun; } ;
typedef  scalar_t__ sense_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_T_ACTIVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  TRANSPORT_NEW_CMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,scalar_t__) ; 

int FUNC5(
	struct se_cmd *cmd)
{
	sense_reason_t ret;

	if (!cmd->se_lun) {
		FUNC0();
		FUNC2("cmd->se_lun is NULL\n");
		return -EINVAL;
	}
	if (FUNC1()) {
		FUNC0();
		FUNC2("transport_generic_handle_cdb cannot be called"
				" from interrupt context\n");
		return -EINVAL;
	}
	/*
	 * Set TRANSPORT_NEW_CMD state and CMD_T_ACTIVE to ensure that
	 * outstanding descriptors are handled correctly during shutdown via
	 * transport_wait_for_tasks()
	 *
	 * Also, we don't take cmd->t_state_lock here as we only expect
	 * this to be called for initial descriptor submission.
	 */
	cmd->t_state = TRANSPORT_NEW_CMD;
	cmd->transport_state |= CMD_T_ACTIVE;

	/*
	 * transport_generic_new_cmd() is already handling QUEUE_FULL,
	 * so follow TRANSPORT_NEW_CMD processing thread context usage
	 * and call transport_generic_request_failure() if necessary..
	 */
	ret = FUNC3(cmd);
	if (ret)
		FUNC4(cmd, ret);
	return 0;
}