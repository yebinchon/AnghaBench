#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmcraid_instance {int /*<<< orphan*/  ioarrin; int /*<<< orphan*/  outstanding_cmds; int /*<<< orphan*/  pending_pool_lock; int /*<<< orphan*/  pending_cmd_pool; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; int /*<<< orphan*/  free_list; struct pmcraid_instance* drv_inst; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioarcb_bus_addr; } ;
struct TYPE_4__ {TYPE_1__ ioarcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	unsigned long lock_flags;

	/* Add this command block to pending cmd pool. We do this prior to
	 * writting IOARCB to ioarrin because IOA might complete the command
	 * by the time we are about to add it to the list. Response handler
	 * (isr/tasklet) looks for cmd block in the pending pending list.
	 */
	FUNC5(&pinstance->pending_pool_lock, lock_flags);
	FUNC3(&cmd->free_list, &pinstance->pending_cmd_pool);
	FUNC6(&pinstance->pending_pool_lock, lock_flags);
	FUNC0(&pinstance->outstanding_cmds);

	/* driver writes lower 32-bit value of IOARCB address only */
	FUNC4();
	FUNC1(FUNC2(cmd->ioa_cb->ioarcb.ioarcb_bus_addr), pinstance->ioarrin);
}