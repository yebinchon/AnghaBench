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
struct dlm_ls {int /*<<< orphan*/  ls_in_recovery; int /*<<< orphan*/  ls_flags; int /*<<< orphan*/  ls_recover_lock_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_RECOVER_DOWN ; 
 int /*<<< orphan*/  LSFL_RECOVER_LOCK ; 
 int /*<<< orphan*/  LSFL_RECOVER_WORK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 struct dlm_ls* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void *arg)
{
	struct dlm_ls *ls;

	ls = FUNC0(arg);
	if (!ls) {
		FUNC5("dlm_recoverd: no lockspace %p", arg);
		return -1;
	}

	FUNC3(&ls->ls_in_recovery);
	FUNC7(LSFL_RECOVER_LOCK, &ls->ls_flags);
	FUNC12(&ls->ls_recover_lock_wait);

	while (1) {
		/*
		 * We call kthread_should_stop() after set_current_state().
		 * This is because it works correctly if kthread_stop() is
		 * called just before set_current_state().
		 */
		FUNC8(TASK_INTERRUPTIBLE);
		if (FUNC4()) {
			FUNC8(TASK_RUNNING);
			break;
		}
		if (!FUNC10(LSFL_RECOVER_WORK, &ls->ls_flags) &&
		    !FUNC10(LSFL_RECOVER_DOWN, &ls->ls_flags)) {
			if (FUNC4())
				break;
			FUNC6();
		}
		FUNC8(TASK_RUNNING);

		if (FUNC9(LSFL_RECOVER_DOWN, &ls->ls_flags)) {
			FUNC3(&ls->ls_in_recovery);
			FUNC7(LSFL_RECOVER_LOCK, &ls->ls_flags);
			FUNC12(&ls->ls_recover_lock_wait);
		}

		if (FUNC9(LSFL_RECOVER_WORK, &ls->ls_flags))
			FUNC2(ls);
	}

	if (FUNC10(LSFL_RECOVER_LOCK, &ls->ls_flags))
		FUNC11(&ls->ls_in_recovery);

	FUNC1(ls);
	return 0;
}