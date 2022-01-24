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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct megasas_instance {int max_fw_cmds; int /*<<< orphan*/  mfi_pool_lock; int /*<<< orphan*/  internal_reset_pending_q; TYPE_1__* pdev; struct megasas_cmd** cmd_list; } ;
struct megasas_cmd {int sync_cmd; int /*<<< orphan*/  list; int /*<<< orphan*/  scmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct megasas_cmd*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct megasas_instance *instance)
{
	struct megasas_cmd *cmd;
	int i;
	u16 max_cmd = instance->max_fw_cmds;
	u32 defer_index;
	unsigned long flags;

	defer_index = 0;
	FUNC4(&instance->mfi_pool_lock, flags);
	for (i = 0; i < max_cmd; i++) {
		cmd = instance->cmd_list[i];
		if (cmd->sync_cmd == 1 || cmd->scmd) {
			FUNC0(&instance->pdev->dev, "moving cmd[%d]:%p:%d:%p"
					"on the defer queue as internal\n",
				defer_index, cmd, cmd->sync_cmd, cmd->scmd);

			if (!FUNC3(&cmd->list)) {
				FUNC0(&instance->pdev->dev, "ERROR while"
					" moving this cmd:%p, %d %p, it was"
					"discovered on some list?\n",
					cmd, cmd->sync_cmd, cmd->scmd);

				FUNC2(&cmd->list);
			}
			defer_index++;
			FUNC1(&cmd->list,
				&instance->internal_reset_pending_q);
		}
	}
	FUNC5(&instance->mfi_pool_lock, flags);
}