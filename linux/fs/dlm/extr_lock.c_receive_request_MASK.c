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
struct dlm_rsb {scalar_t__ res_master_nodeid; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int /*<<< orphan*/  m_extra; int /*<<< orphan*/  m_lkid; TYPE_1__ m_header; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_flags; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_IFL_MSTCPY ; 
 int EBADR ; 
 int EINPROGRESS ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  R_RECEIVE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int FUNC2 (struct dlm_ls*,struct dlm_lkb**) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lkb*) ; 
 int FUNC5 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int FUNC7 (struct dlm_ls*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_rsb*) ; 
 int FUNC12 (struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_lkb*,struct dlm_message*) ; 
 int FUNC14 (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_ls*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC18 (struct dlm_rsb*) ; 
 int FUNC19 (struct dlm_ls*,struct dlm_rsb*,int) ; 

__attribute__((used)) static int FUNC20(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int from_nodeid;
	int error, namelen = 0;

	from_nodeid = ms->m_header.h_nodeid;

	error = FUNC2(ls, &lkb);
	if (error)
		goto fail;

	FUNC13(lkb, ms);
	lkb->lkb_flags |= DLM_IFL_MSTCPY;
	error = FUNC14(ls, lkb, ms);
	if (error) {
		FUNC0(ls, lkb);
		goto fail;
	}

	/* The dir node is the authority on whether we are the master
	   for this rsb or not, so if the master sends us a request, we should
	   recreate the rsb if we've destroyed it.   This race happens when we
	   send a remove message to the dir node at the same time that the dir
	   node sends us a request for the rsb. */

	namelen = FUNC12(ms);

	error = FUNC7(ls, ms->m_extra, namelen, from_nodeid,
			 R_RECEIVE_REQUEST, &r);
	if (error) {
		FUNC0(ls, lkb);
		goto fail;
	}

	FUNC8(r);

	if (r->res_master_nodeid != FUNC3()) {
		error = FUNC19(ls, r, from_nodeid);
		if (error) {
			FUNC18(r);
			FUNC11(r);
			FUNC0(ls, lkb);
			goto fail;
		}
	}

	FUNC1(r, lkb);
	error = FUNC5(r, lkb);
	FUNC16(r, lkb, error);
	FUNC6(r, lkb, error);

	FUNC18(r);
	FUNC11(r);

	if (error == -EINPROGRESS)
		error = 0;
	if (error)
		FUNC4(lkb);
	return 0;

 fail:
	/* TODO: instead of returning ENOTBLK, add the lkb to res_lookup
	   and do this receive_request again from process_lookup_list once
	   we get the lookup reply.  This would avoid a many repeated
	   ENOTBLK request failures when the lookup reply designating us
	   as master is delayed. */

	/* We could repeatedly return -EBADR here if our send_remove() is
	   delayed in being sent/arriving/being processed on the dir node.
	   Another node would repeatedly lookup up the master, and the dir
	   node would continue returning our nodeid until our send_remove
	   took effect.

	   We send another remove message in case our previous send_remove
	   was lost/ignored/missed somehow. */

	if (error != -ENOTBLK) {
		FUNC9(ls, "receive_request %x from %d %d",
			  ms->m_lkid, from_nodeid, error);
	}

	if (namelen && error == -EBADR) {
		FUNC15(ls, ms->m_extra, namelen);
		FUNC10(1000);
	}

	FUNC17(ls, ms);
	FUNC16(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
	return error;
}