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
struct task_struct {int dummy; } ;
struct dlm_ls {struct task_struct* ls_recoverd_task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  dlm_recoverd ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct dlm_ls*,char*) ; 

int FUNC3(struct dlm_ls *ls)
{
	struct task_struct *p;
	int error = 0;

	p = FUNC2(dlm_recoverd, ls, "dlm_recoverd");
	if (FUNC0(p))
		error = FUNC1(p);
	else
                ls->ls_recoverd_task = p;
	return error;
}