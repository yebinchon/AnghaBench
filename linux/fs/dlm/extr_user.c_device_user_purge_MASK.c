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
struct dlm_purge_params {int /*<<< orphan*/  pid; int /*<<< orphan*/  nodeid; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dlm_ls* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int FUNC2 (struct dlm_ls*,struct dlm_user_proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dlm_user_proc *proc,
			     struct dlm_purge_params *params)
{
	struct dlm_ls *ls;
	int error;

	ls = FUNC0(proc->lockspace);
	if (!ls)
		return -ENOENT;

	error = FUNC2(ls, proc, params->nodeid, params->pid);

	FUNC1(ls);
	return error;
}