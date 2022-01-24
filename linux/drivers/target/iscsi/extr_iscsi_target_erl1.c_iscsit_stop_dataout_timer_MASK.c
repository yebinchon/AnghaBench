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
struct iscsi_cmd {int dataout_timer_flags; int /*<<< orphan*/  dataout_timeout_lock; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  dataout_timer; } ;

/* Variables and functions */
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iscsi_cmd *cmd)
{
	FUNC2(&cmd->dataout_timeout_lock);
	if (!(cmd->dataout_timer_flags & ISCSI_TF_RUNNING)) {
		FUNC3(&cmd->dataout_timeout_lock);
		return;
	}
	cmd->dataout_timer_flags |= ISCSI_TF_STOP;
	FUNC3(&cmd->dataout_timeout_lock);

	FUNC0(&cmd->dataout_timer);

	FUNC2(&cmd->dataout_timeout_lock);
	cmd->dataout_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC1("Stopped DataOUT Timer for ITT: 0x%08x\n",
			cmd->init_task_tag);
	FUNC3(&cmd->dataout_timeout_lock);
}