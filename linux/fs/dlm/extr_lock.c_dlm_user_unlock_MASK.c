#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ sb_lvbptr; } ;
struct dlm_user_args {TYPE_2__* proc; int /*<<< orphan*/  user_lksb; scalar_t__ castparam; TYPE_1__ lksb; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_ownqueue; struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  locks_spin; int /*<<< orphan*/  unlocking; } ;

/* Variables and functions */
 int DLM_EUNLOCK ; 
 int DLM_LKF_FORCEUNLOCK ; 
 int /*<<< orphan*/  DLM_USER_LVB_LEN ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int FUNC3 (struct dlm_ls*,int,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_user_args*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,struct dlm_user_args*,struct dlm_args*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 

int FUNC12(struct dlm_ls *ls, struct dlm_user_args *ua_tmp,
		    uint32_t flags, uint32_t lkid, char *lvb_in)
{
	struct dlm_lkb *lkb;
	struct dlm_args args;
	struct dlm_user_args *ua;
	int error;

	FUNC0(ls);

	error = FUNC3(ls, lkid, &lkb);
	if (error)
		goto out;

	ua = lkb->lkb_ua;

	if (lvb_in && ua->lksb.sb_lvbptr)
		FUNC7(ua->lksb.sb_lvbptr, lvb_in, DLM_USER_LVB_LEN);
	if (ua_tmp->castparam)
		ua->castparam = ua_tmp->castparam;
	ua->user_lksb = ua_tmp->user_lksb;

	error = FUNC8(flags, ua, &args);
	if (error)
		goto out_put;

	error = FUNC11(ls, lkb, &args);

	if (error == -DLM_EUNLOCK)
		error = 0;
	/* from validate_unlock_args() */
	if (error == -EBUSY && (flags & DLM_LKF_FORCEUNLOCK))
		error = 0;
	if (error)
		goto out_put;

	FUNC9(&ua->proc->locks_spin);
	/* dlm_user_add_cb() may have already taken lkb off the proc list */
	if (!FUNC5(&lkb->lkb_ownqueue))
		FUNC6(&lkb->lkb_ownqueue, &ua->proc->unlocking);
	FUNC10(&ua->proc->locks_spin);
 out_put:
	FUNC1(lkb);
 out:
	FUNC2(ls);
	FUNC4(ua_tmp);
	return error;
}