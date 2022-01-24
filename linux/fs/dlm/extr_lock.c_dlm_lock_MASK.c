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
typedef  int uint32_t ;
struct dlm_ls {int dummy; } ;
struct dlm_lksb {int /*<<< orphan*/  sb_lkid; } ;
struct dlm_lkb {int dummy; } ;
struct dlm_args {int dummy; } ;
typedef  int /*<<< orphan*/  dlm_lockspace_t ;

/* Variables and functions */
 int DLM_LKF_CONVERT ; 
 int EAGAIN ; 
 int EDEADLK ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_lkb*) ; 
 int FUNC1 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 
 int FUNC2 (struct dlm_ls*,struct dlm_lkb**) ; 
 struct dlm_ls* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*) ; 
 int FUNC7 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int FUNC8 (struct dlm_ls*,struct dlm_lkb*,void*,unsigned int,struct dlm_args*) ; 
 int FUNC9 (int,struct dlm_lksb*,int,unsigned int,int /*<<< orphan*/ ,void (*) (void*),void*,void (*) (void*,int),struct dlm_args*) ; 

int FUNC10(dlm_lockspace_t *lockspace,
	     int mode,
	     struct dlm_lksb *lksb,
	     uint32_t flags,
	     void *name,
	     unsigned int namelen,
	     uint32_t parent_lkid,
	     void (*ast) (void *astarg),
	     void *astarg,
	     void (*bast) (void *astarg, int mode))
{
	struct dlm_ls *ls;
	struct dlm_lkb *lkb;
	struct dlm_args args;
	int error, convert = flags & DLM_LKF_CONVERT;

	ls = FUNC3(lockspace);
	if (!ls)
		return -EINVAL;

	FUNC4(ls);

	if (convert)
		error = FUNC7(ls, lksb->sb_lkid, &lkb);
	else
		error = FUNC2(ls, &lkb);

	if (error)
		goto out;

	error = FUNC9(mode, lksb, flags, namelen, 0, ast,
			      astarg, bast, &args);
	if (error)
		goto out_put;

	if (convert)
		error = FUNC1(ls, lkb, &args);
	else
		error = FUNC8(ls, lkb, name, namelen, &args);

	if (error == -EINPROGRESS)
		error = 0;
 out_put:
	if (convert || error)
		FUNC0(ls, lkb);
	if (error == -EAGAIN || error == -EDEADLK)
		error = 0;
 out:
	FUNC6(ls);
	FUNC5(ls);
	return error;
}