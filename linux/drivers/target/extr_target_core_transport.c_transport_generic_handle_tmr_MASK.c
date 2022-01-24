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
struct se_cmd {int transport_state; int /*<<< orphan*/  work; int /*<<< orphan*/  tag; TYPE_1__* se_tmr_req; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  t_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref_task_tag; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int CMD_T_ABORTED ; 
 int CMD_T_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSPORT_ISTATE_PROCESSING ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  target_tmr_work ; 

int FUNC6(
	struct se_cmd *cmd)
{
	unsigned long flags;
	bool aborted = false;

	FUNC3(&cmd->t_state_lock, flags);
	if (cmd->transport_state & CMD_T_ABORTED) {
		aborted = true;
	} else {
		cmd->t_state = TRANSPORT_ISTATE_PROCESSING;
		cmd->transport_state |= CMD_T_ACTIVE;
	}
	FUNC4(&cmd->t_state_lock, flags);

	if (aborted) {
		FUNC1("handle_tmr caught CMD_T_ABORTED TMR %d ref_tag: %llu tag: %llu\n",
				    cmd->se_tmr_req->function,
				    cmd->se_tmr_req->ref_task_tag, cmd->tag);
		FUNC5(cmd);
		return 0;
	}

	FUNC0(&cmd->work, target_tmr_work);
	FUNC2(&cmd->work);
	return 0;
}