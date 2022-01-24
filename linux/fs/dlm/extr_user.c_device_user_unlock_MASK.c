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
struct dlm_user_proc {int /*<<< orphan*/  lockspace; } ;
struct dlm_user_args {int /*<<< orphan*/  castaddr; int /*<<< orphan*/  castparam; int /*<<< orphan*/  user_lksb; struct dlm_user_proc* proc; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lock_params {int flags; int /*<<< orphan*/  lvb; int /*<<< orphan*/  lkid; int /*<<< orphan*/  castaddr; int /*<<< orphan*/  castparam; int /*<<< orphan*/  lksb; } ;

/* Variables and functions */
 int DLM_LKF_CANCEL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct dlm_ls* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int FUNC2 (struct dlm_ls*,struct dlm_user_args*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dlm_ls*,struct dlm_user_args*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dlm_user_args* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dlm_user_proc *proc,
			      struct dlm_lock_params *params)
{
	struct dlm_ls *ls;
	struct dlm_user_args *ua;
	int error = -ENOMEM;

	ls = FUNC0(proc->lockspace);
	if (!ls)
		return -ENOENT;

	ua = FUNC4(sizeof(struct dlm_user_args), GFP_NOFS);
	if (!ua)
		goto out;
	ua->proc = proc;
	ua->user_lksb = params->lksb;
	ua->castparam = params->castparam;
	ua->castaddr = params->castaddr;

	if (params->flags & DLM_LKF_CANCEL)
		error = FUNC2(ls, ua, params->flags, params->lkid);
	else
		error = FUNC3(ls, ua, params->flags, params->lkid,
					params->lvb);
 out:
	FUNC1(ls);
	return error;
}