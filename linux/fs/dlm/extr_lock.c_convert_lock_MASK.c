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
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;
struct dlm_args {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 
 int FUNC5 (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ; 

__attribute__((used)) static int FUNC6(struct dlm_ls *ls, struct dlm_lkb *lkb,
			struct dlm_args *args)
{
	struct dlm_rsb *r;
	int error;

	r = lkb->lkb_resource;

	FUNC1(r);
	FUNC2(r);

	error = FUNC5(ls, lkb, args);
	if (error)
		goto out;

	error = FUNC0(r, lkb);
 out:
	FUNC4(r);
	FUNC3(r);
	return error;
}