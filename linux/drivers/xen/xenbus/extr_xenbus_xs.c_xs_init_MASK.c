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
 int FUNC1 (struct task_struct*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  xenwatch_thread ; 
 int /*<<< orphan*/  xs_reboot_nb ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(void)
{
	int err;
	struct task_struct *task;

	FUNC3(&xs_reboot_nb);

	/* Initialize the shared memory rings to talk to xenstored */
	err = FUNC4();
	if (err)
		return err;

	task = FUNC2(xenwatch_thread, NULL, "xenwatch");
	if (FUNC0(task))
		return FUNC1(task);

	/* shutdown watches for kexec boot */
	FUNC5();

	return 0;
}