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
struct dlm_rsb {int res_master_nodeid; int /*<<< orphan*/  res_hashnode; int /*<<< orphan*/  res_ref; int /*<<< orphan*/  res_first_lkid; } ;
struct TYPE_3__ {int h_nodeid; } ;
struct dlm_message {int /*<<< orphan*/  m_extra; int /*<<< orphan*/  m_hash; TYPE_1__ m_header; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_2__* ls_rsbtbl; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  toss; int /*<<< orphan*/  keep; } ;

/* Variables and functions */
 int DLM_RESNAME_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,struct dlm_rsb**) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kill_rsb ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ls*,char*,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ls*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct dlm_ls *ls, struct dlm_message *ms)
{
	char name[DLM_RESNAME_MAXLEN+1];
	struct dlm_rsb *r;
	uint32_t hash, b;
	int rv, len, dir_nodeid, from_nodeid;

	from_nodeid = ms->m_header.h_nodeid;

	len = FUNC12(ms);

	if (len > DLM_RESNAME_MAXLEN) {
		FUNC8(ls, "receive_remove from %d bad len %d",
			  from_nodeid, len);
		return;
	}

	dir_nodeid = FUNC1(ls, ms->m_hash);
	if (dir_nodeid != FUNC2()) {
		FUNC8(ls, "receive_remove from %d bad nodeid %d",
			  from_nodeid, dir_nodeid);
		return;
	}

	/* Look for name on rsbtbl.toss, if it's there, kill it.
	   If it's on rsbtbl.keep, it's being used, and we should ignore this
	   message.  This is an expected race between the dir node sending a
	   request to the master node at the same time as the master node sends
	   a remove to the dir node.  The resolution to that race is for the
	   dir node to ignore the remove message, and the master node to
	   recreate the master rsb when it gets a request from the dir node for
	   an rsb it doesn't have. */

	FUNC10(name, 0, sizeof(name));
	FUNC9(name, ms->m_extra, len);

	hash = FUNC5(name, len, 0);
	b = hash & (ls->ls_rsbtbl_size - 1);

	FUNC13(&ls->ls_rsbtbl[b].lock);

	rv = FUNC4(&ls->ls_rsbtbl[b].toss, name, len, &r);
	if (rv) {
		/* verify the rsb is on keep list per comment above */
		rv = FUNC4(&ls->ls_rsbtbl[b].keep, name, len, &r);
		if (rv) {
			/* should not happen */
			FUNC8(ls, "receive_remove from %d not found %s",
				  from_nodeid, name);
			FUNC14(&ls->ls_rsbtbl[b].lock);
			return;
		}
		if (r->res_master_nodeid != from_nodeid) {
			/* should not happen */
			FUNC8(ls, "receive_remove keep from %d master %d",
				  from_nodeid, r->res_master_nodeid);
			FUNC3(r);
			FUNC14(&ls->ls_rsbtbl[b].lock);
			return;
		}

		FUNC7(ls, "receive_remove from %d master %d first %x %s",
			  from_nodeid, r->res_master_nodeid, r->res_first_lkid,
			  name);
		FUNC14(&ls->ls_rsbtbl[b].lock);
		return;
	}

	if (r->res_master_nodeid != from_nodeid) {
		FUNC8(ls, "receive_remove toss from %d master %d",
			  from_nodeid, r->res_master_nodeid);
		FUNC3(r);
		FUNC14(&ls->ls_rsbtbl[b].lock);
		return;
	}

	if (FUNC6(&r->res_ref, kill_rsb)) {
		FUNC11(&r->res_hashnode, &ls->ls_rsbtbl[b].toss);
		FUNC14(&ls->ls_rsbtbl[b].lock);
		FUNC0(r);
	} else {
		FUNC8(ls, "receive_remove from %d rsb ref error",
			  from_nodeid);
		FUNC3(r);
		FUNC14(&ls->ls_rsbtbl[b].lock);
	}
}