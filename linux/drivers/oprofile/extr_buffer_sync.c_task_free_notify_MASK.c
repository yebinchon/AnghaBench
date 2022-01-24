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
struct task_struct {int /*<<< orphan*/  tasks; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_OK ; 
 int /*<<< orphan*/  dying_tasks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  task_mortuary ; 

__attribute__((used)) static int
FUNC3(struct notifier_block *self, unsigned long val, void *data)
{
	unsigned long flags;
	struct task_struct *task = data;
	FUNC1(&task_mortuary, flags);
	FUNC0(&task->tasks, &dying_tasks);
	FUNC2(&task_mortuary, flags);
	return NOTIFY_OK;
}