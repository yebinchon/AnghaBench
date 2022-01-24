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
struct dlm_rsb {int res_dir_nodeid; scalar_t__ res_nodeid; scalar_t__ res_master_nodeid; int /*<<< orphan*/  res_name; int /*<<< orphan*/  res_first_lkid; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int ENOTBLK ; 
 scalar_t__ FUNC0 (struct dlm_ls*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,char*,int,scalar_t__,int,...) ; 

__attribute__((used)) static int FUNC5(struct dlm_ls *ls, struct dlm_rsb *r,
				  int from_nodeid)
{
	if (FUNC0(ls)) {
		FUNC4(ls, "find_rsb keep from_nodeid %d master %d dir %d",
			  from_nodeid, r->res_master_nodeid,
			  r->res_dir_nodeid);
		FUNC2(r);
		return -ENOTBLK;
	}

	if (from_nodeid != r->res_dir_nodeid) {
		/* our rsb is not master, and another node (not the dir node)
	   	   has sent us a request.  this is much more common when our
	   	   master_nodeid is zero, so limit debug to non-zero.  */

		if (r->res_master_nodeid) {
			FUNC3(ls, "validate master from_other %d master %d "
				  "dir %d first %x %s", from_nodeid,
				  r->res_master_nodeid, r->res_dir_nodeid,
				  r->res_first_lkid, r->res_name);
		}
		return -ENOTBLK;
	} else {
		/* our rsb is not master, but the dir nodeid has sent us a
	   	   request; this could happen with master 0 / res_nodeid -1 */

		if (r->res_master_nodeid) {
			FUNC4(ls, "validate master from_dir %d master %d "
				  "first %x %s",
				  from_nodeid, r->res_master_nodeid,
				  r->res_first_lkid, r->res_name);
		}

		r->res_master_nodeid = FUNC1();
		r->res_nodeid = 0;
		return 0;
	}
}