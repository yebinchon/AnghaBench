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
typedef  int uint32_t ;
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  toss; int /*<<< orphan*/  keep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,struct dlm_rsb**) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dlm_ls *ls, char *name, int len)
{
	struct dlm_rsb *r = NULL;
	uint32_t hash, b;
	int error;

	hash = FUNC2(name, len, 0);
	b = hash & (ls->ls_rsbtbl_size - 1);

	FUNC3(&ls->ls_rsbtbl[b].lock);
	error = FUNC1(&ls->ls_rsbtbl[b].keep, name, len, &r);
	if (!error)
		goto out_dump;

	error = FUNC1(&ls->ls_rsbtbl[b].toss, name, len, &r);
	if (error)
		goto out;
 out_dump:
	FUNC0(r);
 out:
	FUNC4(&ls->ls_rsbtbl[b].lock);
}