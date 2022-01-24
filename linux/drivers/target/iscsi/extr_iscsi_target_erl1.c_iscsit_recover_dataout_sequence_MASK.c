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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_cmd {int /*<<< orphan*/  istate_lock; int /*<<< orphan*/  cmd_flags; } ;

/* Variables and functions */
 int DATAOUT_CANNOT_RECOVER ; 
 int DATAOUT_WITHIN_COMMAND_RECOVERY ; 
 int /*<<< orphan*/  ICF_WITHIN_COMMAND_RECOVERY ; 
 scalar_t__ FUNC0 (struct iscsi_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(
	struct iscsi_cmd *cmd,
	u32 pdu_offset,
	u32 pdu_length)
{
	u32 r2t_length = 0, r2t_offset = 0;

	FUNC2(&cmd->istate_lock);
	cmd->cmd_flags |= ICF_WITHIN_COMMAND_RECOVERY;
	FUNC3(&cmd->istate_lock);

	if (FUNC0(cmd, pdu_offset, pdu_length,
			&r2t_offset, &r2t_length) < 0)
		return DATAOUT_CANNOT_RECOVER;

	FUNC1(cmd, r2t_offset, r2t_length);

	return DATAOUT_WITHIN_COMMAND_RECOVERY;
}