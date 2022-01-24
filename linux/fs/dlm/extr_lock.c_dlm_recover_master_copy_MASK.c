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
typedef  int /*<<< orphan*/  uint32_t ;
struct rcom_lock {void* rl_result; void* rl_remid; int /*<<< orphan*/  rl_status; int /*<<< orphan*/  rl_namelen; int /*<<< orphan*/  rl_name; int /*<<< orphan*/  rl_lkid; scalar_t__ rl_parent_lkid; } ;
struct dlm_rsb {int /*<<< orphan*/  res_convertqueue; int /*<<< orphan*/  res_waitqueue; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_rcom {TYPE_1__ rc_header; scalar_t__ rc_buf; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recover_seq; int /*<<< orphan*/  ls_recover_locks_in; } ;
struct dlm_lkb {int lkb_id; int /*<<< orphan*/  lkb_recover_seq; } ;

/* Variables and functions */
 int EBADR ; 
 int EEXIST ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RSB_RECOVER_GRANT ; 
 int /*<<< orphan*/  R_RECEIVE_RECOVER ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct dlm_ls*,struct dlm_lkb**) ; 
 scalar_t__ FUNC5 (struct dlm_rsb*) ; 
 scalar_t__ FUNC6 (struct dlm_ls*) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (struct dlm_ls*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_ls*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_ls*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_rsb*) ; 
 int FUNC16 (struct dlm_ls*,struct dlm_lkb*,struct dlm_rsb*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC17 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 struct dlm_lkb* FUNC18 (struct dlm_rsb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct dlm_rsb*) ; 

int FUNC20(struct dlm_ls *ls, struct dlm_rcom *rc)
{
	struct rcom_lock *rl = (struct rcom_lock *) rc->rc_buf;
	struct dlm_rsb *r;
	struct dlm_lkb *lkb;
	uint32_t remid = 0;
	int from_nodeid = rc->rc_header.h_nodeid;
	int error;

	if (rl->rl_parent_lkid) {
		error = -EOPNOTSUPP;
		goto out;
	}

	remid = FUNC10(rl->rl_lkid);

	/* In general we expect the rsb returned to be R_MASTER, but we don't
	   have to require it.  Recovery of masters on one node can overlap
	   recovery of locks on another node, so one node can send us MSTCPY
	   locks before we've made ourselves master of this rsb.  We can still
	   add new MSTCPY locks that we receive here without any harm; when
	   we make ourselves master, dlm_recover_masters() won't touch the
	   MSTCPY locks we've received early. */

	error = FUNC8(ls, rl->rl_name, FUNC9(rl->rl_namelen),
			 from_nodeid, R_RECEIVE_RECOVER, &r);
	if (error)
		goto out;

	FUNC12(r);

	if (FUNC6(ls) && (FUNC5(r) != FUNC7())) {
		FUNC13(ls, "dlm_recover_master_copy remote %d %x not dir",
			  from_nodeid, remid);
		error = -EBADR;
		goto out_unlock;
	}

	lkb = FUNC18(r, from_nodeid, remid);
	if (lkb) {
		error = -EEXIST;
		goto out_remid;
	}

	error = FUNC4(ls, &lkb);
	if (error)
		goto out_unlock;

	error = FUNC16(ls, lkb, r, rc);
	if (error) {
		FUNC0(ls, lkb);
		goto out_unlock;
	}

	FUNC2(r, lkb);
	FUNC1(r, lkb, rl->rl_status);
	error = 0;
	ls->ls_recover_locks_in++;

	if (!FUNC11(&r->res_waitqueue) || !FUNC11(&r->res_convertqueue))
		FUNC17(r, RSB_RECOVER_GRANT);

 out_remid:
	/* this is the new value returned to the lock holder for
	   saving in its process-copy lkb */
	rl->rl_remid = FUNC3(lkb->lkb_id);

	lkb->lkb_recover_seq = ls->ls_recover_seq;

 out_unlock:
	FUNC19(r);
	FUNC15(r);
 out:
	if (error && error != -EEXIST)
		FUNC14(ls, "dlm_recover_master_copy remote %d %x error %d",
			  from_nodeid, remid, error);
	rl->rl_result = FUNC3(error);
	return error;
}