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
struct dlm_rsb {int res_master_nodeid; int res_nodeid; } ;
struct dlm_rcom {int rc_result; scalar_t__ rc_id; } ;
struct dlm_ls {int /*<<< orphan*/  ls_wait_general; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 scalar_t__ FUNC4 (struct dlm_ls*) ; 
 struct dlm_rsb* FUNC5 (struct dlm_ls*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct dlm_ls *ls, struct dlm_rcom *rc)
{
	struct dlm_rsb *r;
	int ret_nodeid, new_master;

	r = FUNC5(ls, rc->rc_id);
	if (!r) {
		FUNC2(ls, "dlm_recover_master_reply no id %llx",
			  (unsigned long long)rc->rc_id);
		goto out;
	}

	ret_nodeid = rc->rc_result;

	if (ret_nodeid == FUNC0())
		new_master = 0;
	else
		new_master = ret_nodeid;

	FUNC1(r);
	r->res_master_nodeid = ret_nodeid;
	r->res_nodeid = new_master;
	FUNC6(r);
	FUNC7(r);
	FUNC3(r);

	if (FUNC4(ls))
		FUNC8(&ls->ls_wait_general);
 out:
	return 0;
}