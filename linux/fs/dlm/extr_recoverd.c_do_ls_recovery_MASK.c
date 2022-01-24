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
struct dlm_recover {scalar_t__ seq; struct dlm_recover* nodes; } ;
struct dlm_ls {scalar_t__ ls_recover_seq; int /*<<< orphan*/  ls_recover_lock; int /*<<< orphan*/  ls_flags; struct dlm_recover* ls_recover_args; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_RECOVER_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_recover*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*,struct dlm_recover*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dlm_ls *ls)
{
	struct dlm_recover *rv = NULL;

	FUNC3(&ls->ls_recover_lock);
	rv = ls->ls_recover_args;
	ls->ls_recover_args = NULL;
	if (rv && ls->ls_recover_seq == rv->seq)
		FUNC0(LSFL_RECOVER_STOP, &ls->ls_flags);
	FUNC4(&ls->ls_recover_lock);

	if (rv) {
		FUNC2(ls, rv);
		FUNC1(rv->nodes);
		FUNC1(rv);
	}
}