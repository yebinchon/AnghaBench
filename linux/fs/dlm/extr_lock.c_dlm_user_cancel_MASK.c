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
typedef  int /*<<< orphan*/  uint32_t ;
struct dlm_user_args {int /*<<< orphan*/  user_lksb; scalar_t__ castparam; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;

/* Variables and functions */
 int DLM_ECANCEL ; 
 int EBUSY ; 
 int FUNC0 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*) ; 
 int FUNC4 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_user_args*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dlm_user_args*,struct dlm_args*) ; 

int FUNC7(struct dlm_ls *ls, struct dlm_user_args *ua_tmp,
		    uint32_t flags, uint32_t lkid)
{
	struct dlm_lkb *lkb;
	struct dlm_args args;
	struct dlm_user_args *ua;
	int error;

	FUNC1(ls);

	error = FUNC4(ls, lkid, &lkb);
	if (error)
		goto out;

	ua = lkb->lkb_ua;
	if (ua_tmp->castparam)
		ua->castparam = ua_tmp->castparam;
	ua->user_lksb = ua_tmp->user_lksb;

	error = FUNC6(flags, ua, &args);
	if (error)
		goto out_put;

	error = FUNC0(ls, lkb, &args);

	if (error == -DLM_ECANCEL)
		error = 0;
	/* from validate_unlock_args() */
	if (error == -EBUSY)
		error = 0;
 out_put:
	FUNC2(lkb);
 out:
	FUNC3(ls);
	FUNC5(ua_tmp);
	return error;
}