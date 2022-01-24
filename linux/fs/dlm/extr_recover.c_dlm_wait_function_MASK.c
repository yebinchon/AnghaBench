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
struct dlm_ls {int /*<<< orphan*/  ls_flags; int /*<<< orphan*/  ls_wait_general; } ;
struct TYPE_2__ {int ci_recover_timer; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  LSFL_RCOM_WAIT ; 
 TYPE_1__ dlm_config ; 
 scalar_t__ FUNC0 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct dlm_ls *ls, int (*testfn) (struct dlm_ls *ls))
{
	int error = 0;
	int rv;

	while (1) {
		rv = FUNC3(ls->ls_wait_general,
					testfn(ls) || FUNC0(ls),
					dlm_config.ci_recover_timer * HZ);
		if (rv)
			break;
		if (FUNC2(LSFL_RCOM_WAIT, &ls->ls_flags)) {
			FUNC1(ls, "dlm_wait_function timed out");
			return -ETIMEDOUT;
		}
	}

	if (FUNC0(ls)) {
		FUNC1(ls, "dlm_wait_function aborted");
		error = -EINTR;
	}
	return error;
}