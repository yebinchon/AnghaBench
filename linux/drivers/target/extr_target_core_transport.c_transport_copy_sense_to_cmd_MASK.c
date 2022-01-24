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
struct se_cmd {int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  scsi_sense_length; int /*<<< orphan*/  se_cmd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCF_TRANSPORT_TASK_SENSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char* FUNC3 (struct se_cmd*) ; 

void FUNC4(struct se_cmd *cmd, unsigned char *sense)
{
	unsigned char *cmd_sense_buf;
	unsigned long flags;

	FUNC1(&cmd->t_state_lock, flags);
	cmd_sense_buf = FUNC3(cmd);
	if (!cmd_sense_buf) {
		FUNC2(&cmd->t_state_lock, flags);
		return;
	}

	cmd->se_cmd_flags |= SCF_TRANSPORT_TASK_SENSE;
	FUNC0(cmd_sense_buf, sense, cmd->scsi_sense_length);
	FUNC2(&cmd->t_state_lock, flags);
}