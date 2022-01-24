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
struct dlm_ls {int /*<<< orphan*/  ls_orphans_mutex; int /*<<< orphan*/  ls_orphans; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_ua; int /*<<< orphan*/  lkb_ownqueue; } ;
struct dlm_args {int dummy; } ;

/* Variables and functions */
 int DLM_ECANCEL ; 
 int FUNC0 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_args*) ; 

__attribute__((used)) static int FUNC6(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
	struct dlm_args args;
	int error;

	FUNC1(lkb); /* reference for the ls_orphans list */
	FUNC3(&ls->ls_orphans_mutex);
	FUNC2(&lkb->lkb_ownqueue, &ls->ls_orphans);
	FUNC4(&ls->ls_orphans_mutex);

	FUNC5(0, lkb->lkb_ua, &args);

	error = FUNC0(ls, lkb, &args);
	if (error == -DLM_ECANCEL)
		error = 0;
	return error;
}