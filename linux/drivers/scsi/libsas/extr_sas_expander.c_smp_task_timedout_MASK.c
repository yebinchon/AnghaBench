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
struct timer_list {int dummy; } ;
struct sas_task_slow {struct sas_task* task; } ;
struct sas_task {int task_state_flags; int /*<<< orphan*/  task_state_lock; TYPE_1__* slow_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sas_task_slow* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct sas_task_slow* slow ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct sas_task_slow *slow = FUNC1(slow, t, timer);
	struct sas_task *task = slow->task;
	unsigned long flags;

	FUNC2(&task->task_state_lock, flags);
	if (!(task->task_state_flags & SAS_TASK_STATE_DONE)) {
		task->task_state_flags |= SAS_TASK_STATE_ABORTED;
		FUNC0(&task->slow_task->completion);
	}
	FUNC3(&task->task_state_lock, flags);
}