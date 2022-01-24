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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PROFILE_MUNMAP ; 
 int /*<<< orphan*/  PROFILE_TASK_EXIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  marked_cpus ; 
 int /*<<< orphan*/  module_load_nb ; 
 int /*<<< orphan*/  munmap_nb ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  task_exit_nb ; 
 int /*<<< orphan*/  task_free_nb ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(void)
{
	int err;

	if (!FUNC8(&marked_cpus, GFP_KERNEL))
		return -ENOMEM;

	err = FUNC6(&task_free_nb);
	if (err)
		goto out1;
	err = FUNC2(PROFILE_TASK_EXIT, &task_exit_nb);
	if (err)
		goto out2;
	err = FUNC2(PROFILE_MUNMAP, &munmap_nb);
	if (err)
		goto out3;
	err = FUNC4(&module_load_nb);
	if (err)
		goto out4;

	FUNC5();

out:
	return err;
out4:
	FUNC3(PROFILE_MUNMAP, &munmap_nb);
out3:
	FUNC3(PROFILE_TASK_EXIT, &task_exit_nb);
out2:
	FUNC7(&task_free_nb);
	FUNC0();
out1:
	FUNC1(marked_cpus);
	goto out;
}