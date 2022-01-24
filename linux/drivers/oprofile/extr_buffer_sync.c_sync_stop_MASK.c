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
 int /*<<< orphan*/  PROFILE_MUNMAP ; 
 int /*<<< orphan*/  PROFILE_TASK_EXIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  marked_cpus ; 
 int /*<<< orphan*/  module_load_nb ; 
 int /*<<< orphan*/  munmap_nb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_exit_nb ; 
 int /*<<< orphan*/  task_free_nb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	FUNC1();
	FUNC7(&module_load_nb);
	FUNC5(PROFILE_MUNMAP, &munmap_nb);
	FUNC5(PROFILE_TASK_EXIT, &task_exit_nb);
	FUNC6(&task_free_nb);
	FUNC0();			/* do all of the above first */

	FUNC2();

	FUNC3();
	FUNC4(marked_cpus);
}