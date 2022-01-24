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
struct se_cmd {int transport_state; int /*<<< orphan*/  t_transport_stop_comp; int /*<<< orphan*/  (* transport_complete_callback ) (struct se_cmd*,int,int*) ;int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int CMD_T_ABORTED ; 
 int CMD_T_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,int,int*) ; 
 int /*<<< orphan*/  target_abort_work ; 
 int /*<<< orphan*/  target_completion_wq ; 

__attribute__((used)) static bool FUNC5(struct se_cmd *cmd)
{
	int post_ret;

	if (cmd->transport_state & CMD_T_ABORTED) {
		if (cmd->transport_complete_callback)
			cmd->transport_complete_callback(cmd, false, &post_ret);
		FUNC0(&cmd->work, target_abort_work);
		FUNC2(target_completion_wq, &cmd->work);
		return true;
	} else if (cmd->transport_state & CMD_T_STOP) {
		if (cmd->transport_complete_callback)
			cmd->transport_complete_callback(cmd, false, &post_ret);
		FUNC1(&cmd->t_transport_stop_comp);
		return true;
	}

	return false;
}