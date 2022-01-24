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
struct pmcraid_instance {int /*<<< orphan*/  free_pool_lock; int /*<<< orphan*/  free_cmd_pool; } ;
struct pmcraid_cmd {int /*<<< orphan*/  free_list; struct pmcraid_instance* drv_inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	unsigned long lock_flags;

	FUNC1(&pinstance->free_pool_lock, lock_flags);
	FUNC0(&cmd->free_list, &pinstance->free_cmd_pool);
	FUNC2(&pinstance->free_pool_lock, lock_flags);
}