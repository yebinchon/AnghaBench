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
struct se_cmd {int transport_state; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  t_state; } ;

/* Variables and functions */
 int CMD_T_ACTIVE ; 
 int CMD_T_SENT ; 
 int /*<<< orphan*/  TRANSPORT_PROCESSING ; 
 int /*<<< orphan*/  FUNC0 (struct se_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct se_cmd*) ; 
 scalar_t__ FUNC4 (struct se_cmd*) ; 
 scalar_t__ FUNC5 (struct se_cmd*) ; 

void FUNC6(struct se_cmd *cmd)
{
	/*
	 * Determine if frontend context caller is requesting the stopping of
	 * this command for frontend exceptions.
	 *
	 * If the received CDB has already been aborted stop processing it here.
	 */
	if (FUNC3(cmd))
		return;

	FUNC1(&cmd->t_state_lock);
	cmd->t_state = TRANSPORT_PROCESSING;
	cmd->transport_state |= CMD_T_ACTIVE | CMD_T_SENT;
	FUNC2(&cmd->t_state_lock);

	if (FUNC5(cmd))
		return;

	if (FUNC4(cmd)) {
		FUNC1(&cmd->t_state_lock);
		cmd->transport_state &= ~CMD_T_SENT;
		FUNC2(&cmd->t_state_lock);
		return;
	}

	FUNC0(cmd, true);
}