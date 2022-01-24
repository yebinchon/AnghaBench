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
struct se_device {int /*<<< orphan*/  execute_task_lock; int /*<<< orphan*/  state_list; } ;
struct se_cmd {int state_active; int /*<<< orphan*/  state_list; struct se_device* se_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;
	unsigned long flags;

	FUNC1(&dev->execute_task_lock, flags);
	if (!cmd->state_active) {
		FUNC0(&cmd->state_list, &dev->state_list);
		cmd->state_active = true;
	}
	FUNC2(&dev->execute_task_lock, flags);
}