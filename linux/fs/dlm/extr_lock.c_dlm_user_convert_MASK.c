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
struct TYPE_2__ {scalar_t__ sb_lvbptr; } ;
struct dlm_user_args {TYPE_1__ lksb; int /*<<< orphan*/  user_lksb; int /*<<< orphan*/  bastaddr; int /*<<< orphan*/  bastparam; int /*<<< orphan*/  castaddr; int /*<<< orphan*/  castparam; int /*<<< orphan*/  xid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;

/* Variables and functions */
 int DLM_LKF_VALBLK ; 
 int /*<<< orphan*/  DLM_USER_LVB_LEN ; 
 int EAGAIN ; 
 int EDEADLK ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*) ; 
 int /*<<< orphan*/  fake_astfn ; 
 int /*<<< orphan*/  fake_bastfn ; 
 int FUNC4 (struct dlm_ls*,int,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_user_args*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,TYPE_1__*,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct dlm_user_args*,int /*<<< orphan*/ ,struct dlm_args*) ; 

int FUNC9(struct dlm_ls *ls, struct dlm_user_args *ua_tmp,
		     int mode, uint32_t flags, uint32_t lkid, char *lvb_in,
		     unsigned long timeout_cs)
{
	struct dlm_lkb *lkb;
	struct dlm_args args;
	struct dlm_user_args *ua;
	int error;

	FUNC1(ls);

	error = FUNC4(ls, lkid, &lkb);
	if (error)
		goto out;

	/* user can change the params on its lock when it converts it, or
	   add an lvb that didn't exist before */

	ua = lkb->lkb_ua;

	if (flags & DLM_LKF_VALBLK && !ua->lksb.sb_lvbptr) {
		ua->lksb.sb_lvbptr = FUNC6(DLM_USER_LVB_LEN, GFP_NOFS);
		if (!ua->lksb.sb_lvbptr) {
			error = -ENOMEM;
			goto out_put;
		}
	}
	if (lvb_in && ua->lksb.sb_lvbptr)
		FUNC7(ua->lksb.sb_lvbptr, lvb_in, DLM_USER_LVB_LEN);

	ua->xid = ua_tmp->xid;
	ua->castparam = ua_tmp->castparam;
	ua->castaddr = ua_tmp->castaddr;
	ua->bastparam = ua_tmp->bastparam;
	ua->bastaddr = ua_tmp->bastaddr;
	ua->user_lksb = ua_tmp->user_lksb;

	error = FUNC8(mode, &ua->lksb, flags, 0, timeout_cs,
			      fake_astfn, ua, fake_bastfn, &args);
	if (error)
		goto out_put;

	error = FUNC0(ls, lkb, &args);

	if (error == -EINPROGRESS || error == -EAGAIN || error == -EDEADLK)
		error = 0;
 out_put:
	FUNC2(lkb);
 out:
	FUNC3(ls);
	FUNC5(ua_tmp);
	return error;
}