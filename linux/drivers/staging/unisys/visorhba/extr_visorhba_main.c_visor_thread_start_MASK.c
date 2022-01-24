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
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 struct task_struct* FUNC1 (int (*) (void*),void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct task_struct *FUNC3(int (*threadfn)(void *),
					      void *thrcontext, char *name)
{
	struct task_struct *task;

	task = FUNC1(threadfn, thrcontext, "%s", name);
	if (FUNC0(task)) {
		FUNC2("visorbus failed to start thread\n");
		return NULL;
	}
	return task;
}