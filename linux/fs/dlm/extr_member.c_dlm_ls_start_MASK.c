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
struct dlm_recover {int nodes_count; struct dlm_recover* nodes; scalar_t__ seq; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recoverd_task; int /*<<< orphan*/  ls_flags; int /*<<< orphan*/  ls_recover_lock; struct dlm_recover* ls_recover_args; scalar_t__ ls_recover_seq; int /*<<< orphan*/  ls_name; } ;
struct dlm_config_node {int nodes_count; struct dlm_config_node* nodes; scalar_t__ seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  LSFL_RECOVER_WORK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct dlm_recover**,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_recover*) ; 
 struct dlm_recover* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct dlm_ls *ls)
{
	struct dlm_recover *rv, *rv_old;
	struct dlm_config_node *nodes = NULL;
	int error, count;

	rv = FUNC3(sizeof(*rv), GFP_NOFS);
	if (!rv)
		return -ENOMEM;

	error = FUNC0(ls->ls_name, &nodes, &count);
	if (error < 0)
		goto fail_rv;

	FUNC6(&ls->ls_recover_lock);

	/* the lockspace needs to be stopped before it can be started */

	if (!FUNC1(ls)) {
		FUNC7(&ls->ls_recover_lock);
		FUNC4(ls, "start ignored: lockspace running");
		error = -EINVAL;
		goto fail;
	}

	rv->nodes = nodes;
	rv->nodes_count = count;
	rv->seq = ++ls->ls_recover_seq;
	rv_old = ls->ls_recover_args;
	ls->ls_recover_args = rv;
	FUNC7(&ls->ls_recover_lock);

	if (rv_old) {
		FUNC4(ls, "unused recovery %llx %d",
			  (unsigned long long)rv_old->seq, rv_old->nodes_count);
		FUNC2(rv_old->nodes);
		FUNC2(rv_old);
	}

	FUNC5(LSFL_RECOVER_WORK, &ls->ls_flags);
	FUNC8(ls->ls_recoverd_task);
	return 0;

 fail:
	FUNC2(nodes);
 fail_rv:
	FUNC2(rv);
	return error;
}