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
struct dlm_user_proc {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct TYPE_2__ {int pid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,struct dlm_user_proc*) ; 
 int FUNC5 (struct dlm_ls*,int,int) ; 

int FUNC6(struct dlm_ls *ls, struct dlm_user_proc *proc,
		   int nodeid, int pid)
{
	int error = 0;

	if (nodeid && (nodeid != FUNC1())) {
		error = FUNC5(ls, nodeid, pid);
	} else {
		FUNC0(ls);
		if (pid == current->pid)
			FUNC4(ls, proc);
		else
			FUNC3(ls, nodeid, pid);
		FUNC2(ls);
	}
	return error;
}