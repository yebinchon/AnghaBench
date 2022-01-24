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
struct se_cmd {int se_cmd_flags; TYPE_1__* se_tfo; int /*<<< orphan*/  t_state_lock; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_2__ {int (* queue_status ) (struct se_cmd*) ;} ;

/* Variables and functions */
 int SCF_SCSI_TMR_CDB ; 
 int SCF_SENT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct se_cmd *cmd,
		sense_reason_t reason, int from_transport)
{
	unsigned long flags;

	FUNC0(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB);

	FUNC1(&cmd->t_state_lock, flags);
	if (cmd->se_cmd_flags & SCF_SENT_CHECK_CONDITION) {
		FUNC2(&cmd->t_state_lock, flags);
		return 0;
	}
	cmd->se_cmd_flags |= SCF_SENT_CHECK_CONDITION;
	FUNC2(&cmd->t_state_lock, flags);

	if (!from_transport)
		FUNC5(cmd, reason);

	FUNC4(cmd);
	return cmd->se_tfo->queue_status(cmd);
}