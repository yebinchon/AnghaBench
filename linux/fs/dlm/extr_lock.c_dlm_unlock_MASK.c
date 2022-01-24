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
typedef  int uint32_t ;
struct dlm_ls {int dummy; } ;
struct dlm_lksb {int dummy; } ;
struct dlm_lkb {int dummy; } ;
struct dlm_args {int dummy; } ;
typedef  int /*<<< orphan*/  dlm_lockspace_t ;

/* Variables and functions */
 int DLM_ECANCEL ; 
 int DLM_EUNLOCK ; 
 int DLM_LKF_CANCEL ; 
 int DLM_LKF_FORCEUNLOCK ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 
 struct dlm_ls* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*) ; 
 int FUNC6 (struct dlm_ls*,int,struct dlm_lkb**) ; 
 int FUNC7 (int,void*,struct dlm_args*) ; 
 int FUNC8 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 

int FUNC9(dlm_lockspace_t *lockspace,
	       uint32_t lkid,
	       uint32_t flags,
	       struct dlm_lksb *lksb,
	       void *astarg)
{
	struct dlm_ls *ls;
	struct dlm_lkb *lkb;
	struct dlm_args args;
	int error;

	ls = FUNC1(lockspace);
	if (!ls)
		return -EINVAL;

	FUNC2(ls);

	error = FUNC6(ls, lkid, &lkb);
	if (error)
		goto out;

	error = FUNC7(flags, astarg, &args);
	if (error)
		goto out_put;

	if (flags & DLM_LKF_CANCEL)
		error = FUNC0(ls, lkb, &args);
	else
		error = FUNC8(ls, lkb, &args);

	if (error == -DLM_EUNLOCK || error == -DLM_ECANCEL)
		error = 0;
	if (error == -EBUSY && (flags & (DLM_LKF_CANCEL | DLM_LKF_FORCEUNLOCK)))
		error = 0;
 out_put:
	FUNC3(lkb);
 out:
	FUNC5(ls);
	FUNC4(ls);
	return error;
}