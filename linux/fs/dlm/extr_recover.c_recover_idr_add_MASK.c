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
struct dlm_rsb {int res_id; struct dlm_ls* res_ls; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recover_idr_lock; int /*<<< orphan*/  ls_recover_list_count; int /*<<< orphan*/  ls_recover_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct dlm_rsb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dlm_rsb *r)
{
	struct dlm_ls *ls = r->res_ls;
	int rv;

	FUNC2(GFP_NOFS);
	FUNC4(&ls->ls_recover_idr_lock);
	if (r->res_id) {
		rv = -1;
		goto out_unlock;
	}
	rv = FUNC1(&ls->ls_recover_idr, r, 1, 0, GFP_NOWAIT);
	if (rv < 0)
		goto out_unlock;

	r->res_id = rv;
	ls->ls_recover_list_count++;
	FUNC0(r);
	rv = 0;
out_unlock:
	FUNC5(&ls->ls_recover_idr_lock);
	FUNC3();
	return rv;
}