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
struct dlm_rsb {scalar_t__ res_first_lkid; int res_nodeid; int res_master_nodeid; int /*<<< orphan*/  res_name; int /*<<< orphan*/  res_dir_nodeid; int /*<<< orphan*/  res_ls; int /*<<< orphan*/  res_lookup; } ;
struct dlm_lkb {scalar_t__ lkb_id; int lkb_nodeid; int /*<<< orphan*/  lkb_rsb_lookup; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSB_MASTER_UNCERTAIN ; 
 int FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 

__attribute__((used)) static int FUNC8(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int our_nodeid = FUNC1();

	if (FUNC5(r, RSB_MASTER_UNCERTAIN)) {
		FUNC4(r, RSB_MASTER_UNCERTAIN);
		r->res_first_lkid = lkb->lkb_id;
		lkb->lkb_nodeid = r->res_nodeid;
		return 0;
	}

	if (r->res_first_lkid && r->res_first_lkid != lkb->lkb_id) {
		FUNC2(&lkb->lkb_rsb_lookup, &r->res_lookup);
		return 1;
	}

	if (r->res_master_nodeid == our_nodeid) {
		lkb->lkb_nodeid = 0;
		return 0;
	}

	if (r->res_master_nodeid) {
		lkb->lkb_nodeid = r->res_master_nodeid;
		return 0;
	}

	if (FUNC0(r) == our_nodeid) {
		/* This is a somewhat unusual case; find_rsb will usually
		   have set res_master_nodeid when dir nodeid is local, but
		   there are cases where we become the dir node after we've
		   past find_rsb and go through _request_lock again.
		   confirm_master() or process_lookup_list() needs to be
		   called after this. */
		FUNC3(r->res_ls, "set_master %x self master %d dir %d %s",
			  lkb->lkb_id, r->res_master_nodeid, r->res_dir_nodeid,
			  r->res_name);
		r->res_master_nodeid = our_nodeid;
		r->res_nodeid = 0;
		lkb->lkb_nodeid = 0;
		return 0;
	}

	FUNC7(r);

	r->res_first_lkid = lkb->lkb_id;
	FUNC6(r, lkb);
	return 1;
}