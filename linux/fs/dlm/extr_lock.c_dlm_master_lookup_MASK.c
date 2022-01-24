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
struct dlm_rsb {int res_dir_nodeid; int res_master_nodeid; int res_nodeid; int res_hash; int res_bucket; void* res_toss_time; int /*<<< orphan*/  res_ref; int /*<<< orphan*/  res_name; int /*<<< orphan*/  res_first_lkid; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_1__* ls_rsbtbl; int /*<<< orphan*/  ls_num_nodes; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  toss; int /*<<< orphan*/  keep; } ;

/* Variables and functions */
 int DLM_LU_ADD ; 
 int DLM_LU_MATCH ; 
 unsigned int DLM_LU_RECOVER_DIR ; 
 unsigned int DLM_LU_RECOVER_MASTER ; 
 int DLM_RESNAME_MAXLEN ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  RSB_NEW_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*) ; 
 int FUNC2 (struct dlm_ls*,int) ; 
 scalar_t__ FUNC3 (struct dlm_ls*,int) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,struct dlm_rsb**) ; 
 int FUNC6 (struct dlm_ls*,char*,int,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 
 int FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ls*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ls*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_ls*,char*,int,unsigned int,int,int /*<<< orphan*/ ,...) ; 
 int FUNC14 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_rsb*) ; 
 int FUNC16 (struct dlm_rsb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct dlm_rsb*) ; 

int FUNC21(struct dlm_ls *ls, int from_nodeid, char *name, int len,
		      unsigned int flags, int *r_nodeid, int *result)
{
	struct dlm_rsb *r = NULL;
	uint32_t hash, b;
	int from_master = (flags & DLM_LU_RECOVER_DIR);
	int fix_master = (flags & DLM_LU_RECOVER_MASTER);
	int our_nodeid = FUNC4();
	int dir_nodeid, error, toss_list = 0;

	if (len > DLM_RESNAME_MAXLEN)
		return -EINVAL;

	if (from_nodeid == our_nodeid) {
		FUNC12(ls, "dlm_master_lookup from our_nodeid %d flags %x",
			  our_nodeid, flags);
		return -EINVAL;
	}

	hash = FUNC8(name, len, 0);
	b = hash & (ls->ls_rsbtbl_size - 1);

	dir_nodeid = FUNC2(ls, hash);
	if (dir_nodeid != our_nodeid) {
		FUNC12(ls, "dlm_master_lookup from %d dir %d our %d h %x %d",
			  from_nodeid, dir_nodeid, our_nodeid, hash,
			  ls->ls_num_nodes);
		*r_nodeid = -1;
		return -EINVAL;
	}

 retry:
	error = FUNC14(ls);
	if (error < 0)
		return error;

	FUNC18(&ls->ls_rsbtbl[b].lock);
	error = FUNC5(&ls->ls_rsbtbl[b].keep, name, len, &r);
	if (!error) {
		/* because the rsb is active, we need to lock_rsb before
		   checking/changing re_master_nodeid */

		FUNC7(r);
		FUNC19(&ls->ls_rsbtbl[b].lock);
		FUNC10(r);
		goto found;
	}

	error = FUNC5(&ls->ls_rsbtbl[b].toss, name, len, &r);
	if (error)
		goto not_found;

	/* because the rsb is inactive (on toss list), it's not refcounted
	   and lock_rsb is not used, but is protected by the rsbtbl lock */

	toss_list = 1;
 found:
	if (r->res_dir_nodeid != our_nodeid) {
		/* should not happen, but may as well fix it and carry on */
		FUNC12(ls, "dlm_master_lookup res_dir %d our %d %s",
			  r->res_dir_nodeid, our_nodeid, r->res_name);
		r->res_dir_nodeid = our_nodeid;
	}

	if (fix_master && FUNC3(ls, r->res_master_nodeid)) {
		/* Recovery uses this function to set a new master when
		   the previous master failed.  Setting NEW_MASTER will
		   force dlm_recover_masters to call recover_master on this
		   rsb even though the res_nodeid is no longer removed. */

		r->res_master_nodeid = from_nodeid;
		r->res_nodeid = from_nodeid;
		FUNC17(r, RSB_NEW_MASTER);

		if (toss_list) {
			/* I don't think we should ever find it on toss list. */
			FUNC12(ls, "dlm_master_lookup fix_master on toss");
			FUNC0(r);
		}
	}

	if (from_master && (r->res_master_nodeid != from_nodeid)) {
		/* this will happen if from_nodeid became master during
		   a previous recovery cycle, and we aborted the previous
		   cycle before recovering this master value */

		FUNC13(ls, "dlm_master_lookup from_master %d "
			  "master_nodeid %d res_nodeid %d first %x %s",
			  from_nodeid, r->res_master_nodeid, r->res_nodeid,
			  r->res_first_lkid, r->res_name);

		if (r->res_master_nodeid == our_nodeid) {
			FUNC12(ls, "from_master %d our_master", from_nodeid);
			FUNC0(r);
			goto out_found;
		}

		r->res_master_nodeid = from_nodeid;
		r->res_nodeid = from_nodeid;
		FUNC17(r, RSB_NEW_MASTER);
	}

	if (!r->res_master_nodeid) {
		/* this will happen if recovery happens while we're looking
		   up the master for this rsb */

		FUNC11(ls, "dlm_master_lookup master 0 to %d first %x %s",
			  from_nodeid, r->res_first_lkid, r->res_name);
		r->res_master_nodeid = from_nodeid;
		r->res_nodeid = from_nodeid;
	}

	if (!from_master && !fix_master &&
	    (r->res_master_nodeid == from_nodeid)) {
		/* this can happen when the master sends remove, the dir node
		   finds the rsb on the keep list and ignores the remove,
		   and the former master sends a lookup */

		FUNC13(ls, "dlm_master_lookup from master %d flags %x "
			  "first %x %s", from_nodeid, flags,
			  r->res_first_lkid, r->res_name);
	}

 out_found:
	*r_nodeid = r->res_master_nodeid;
	if (result)
		*result = DLM_LU_MATCH;

	if (toss_list) {
		r->res_toss_time = jiffies;
		/* the rsb was inactive (on toss list) */
		FUNC19(&ls->ls_rsbtbl[b].lock);
	} else {
		/* the rsb was active */
		FUNC20(r);
		FUNC15(r);
	}
	return 0;

 not_found:
	error = FUNC6(ls, name, len, &r);
	if (error == -EAGAIN) {
		FUNC19(&ls->ls_rsbtbl[b].lock);
		goto retry;
	}
	if (error)
		goto out_unlock;

	r->res_hash = hash;
	r->res_bucket = b;
	r->res_dir_nodeid = our_nodeid;
	r->res_master_nodeid = from_nodeid;
	r->res_nodeid = from_nodeid;
	FUNC9(&r->res_ref);
	r->res_toss_time = jiffies;

	error = FUNC16(r, &ls->ls_rsbtbl[b].toss);
	if (error) {
		/* should never happen */
		FUNC1(r);
		FUNC19(&ls->ls_rsbtbl[b].lock);
		goto retry;
	}

	if (result)
		*result = DLM_LU_ADD;
	*r_nodeid = from_nodeid;
	error = 0;
 out_unlock:
	FUNC19(&ls->ls_rsbtbl[b].lock);
	return error;
}