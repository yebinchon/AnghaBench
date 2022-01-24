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
struct dlm_rsb {int res_master_nodeid; scalar_t__ res_nodeid; struct dlm_ls* res_ls; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSB_NEW_MASTER ; 
 int FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 (struct dlm_ls*,scalar_t__) ; 
 int FUNC2 () ; 
 int FUNC3 (struct dlm_rsb*,int) ; 
 scalar_t__ FUNC4 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 

__attribute__((used)) static int FUNC8(struct dlm_rsb *r, unsigned int *count)
{
	struct dlm_ls *ls = r->res_ls;
	int our_nodeid, dir_nodeid;
	int is_removed = 0;
	int error;

	if (FUNC4(r))
		return 0;

	is_removed = FUNC1(ls, r->res_nodeid);

	if (!is_removed && !FUNC6(r, RSB_NEW_MASTER))
		return 0;

	our_nodeid = FUNC2();
	dir_nodeid = FUNC0(r);

	if (dir_nodeid == our_nodeid) {
		if (is_removed) {
			r->res_master_nodeid = our_nodeid;
			r->res_nodeid = 0;
		}

		/* set master of lkbs to ourself when is_removed, or to
		   another new master which we set along with NEW_MASTER
		   in dlm_master_lookup */
		FUNC7(r);
		error = 0;
	} else {
		FUNC5(r);
		error = FUNC3(r, dir_nodeid);
	}

	(*count)++;
	return error;
}