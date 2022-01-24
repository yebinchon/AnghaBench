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
typedef  size_t uint32_t ;
struct dlm_rsb {int res_master_nodeid; int res_nodeid; size_t res_hash; size_t res_bucket; int res_dir_nodeid; int /*<<< orphan*/  res_ref; int /*<<< orphan*/  res_hashnode; } ;
struct dlm_ls {TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  keep; int /*<<< orphan*/  toss; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTBLK ; 
 unsigned int R_RECEIVE_RECOVER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,struct dlm_rsb**) ; 
 int FUNC3 (struct dlm_ls*,char*,int,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,char*,int,int,int) ; 
 int FUNC7 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct dlm_rsb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dlm_ls *ls, char *name, int len,
			  uint32_t hash, uint32_t b,
			  int dir_nodeid, int from_nodeid,
			  unsigned int flags, struct dlm_rsb **r_ret)
{
	struct dlm_rsb *r = NULL;
	int our_nodeid = FUNC0();
	int recover = (flags & R_RECEIVE_RECOVER);
	int error;

 retry:
	error = FUNC7(ls);
	if (error < 0)
		goto out;

	FUNC10(&ls->ls_rsbtbl[b].lock);

	error = FUNC2(&ls->ls_rsbtbl[b].keep, name, len, &r);
	if (error)
		goto do_toss;

	/*
	 * rsb is active, so we can't check master_nodeid without lock_rsb.
	 */

	FUNC4(&r->res_ref);
	goto out_unlock;


 do_toss:
	error = FUNC2(&ls->ls_rsbtbl[b].toss, name, len, &r);
	if (error)
		goto do_new;

	/*
	 * rsb found inactive. No other thread is using this rsb because
	 * it's on the toss list, so we can look at or update
	 * res_master_nodeid without lock_rsb.
	 */

	if (!recover && (r->res_master_nodeid != our_nodeid) && from_nodeid) {
		/* our rsb is not master, and another node has sent us a
		   request; this should never happen */
		FUNC6(ls, "find_rsb toss from_nodeid %d master %d dir %d",
			  from_nodeid, r->res_master_nodeid, dir_nodeid);
		FUNC1(r);
		error = -ENOTBLK;
		goto out_unlock;
	}

	if (!recover && (r->res_master_nodeid != our_nodeid) &&
	    (dir_nodeid == our_nodeid)) {
		/* our rsb is not master, and we are dir; may as well fix it;
		   this should never happen */
		FUNC6(ls, "find_rsb toss our %d master %d dir %d",
			  our_nodeid, r->res_master_nodeid, dir_nodeid);
		FUNC1(r);
		r->res_master_nodeid = our_nodeid;
		r->res_nodeid = 0;
	}

	FUNC8(&r->res_hashnode, &ls->ls_rsbtbl[b].toss);
	error = FUNC9(r, &ls->ls_rsbtbl[b].keep);
	goto out_unlock;


 do_new:
	/*
	 * rsb not found
	 */

	error = FUNC3(ls, name, len, &r);
	if (error == -EAGAIN) {
		FUNC11(&ls->ls_rsbtbl[b].lock);
		goto retry;
	}
	if (error)
		goto out_unlock;

	r->res_hash = hash;
	r->res_bucket = b;
	r->res_dir_nodeid = dir_nodeid;
	r->res_master_nodeid = dir_nodeid;
	r->res_nodeid = (dir_nodeid == our_nodeid) ? 0 : dir_nodeid;
	FUNC5(&r->res_ref);

	error = FUNC9(r, &ls->ls_rsbtbl[b].keep);
 out_unlock:
	FUNC11(&ls->ls_rsbtbl[b].lock);
 out:
	*r_ret = r;
	return error;
}