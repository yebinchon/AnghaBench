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
struct dlm_rsb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_nodeid; } ;
struct dlm_message {scalar_t__ m_lkid; TYPE_1__ m_header; int /*<<< orphan*/  m_remid; } ;
struct dlm_lkb {scalar_t__ lkb_remid; struct dlm_rsb* lkb_resource; scalar_t__ lkb_recover_seq; int /*<<< orphan*/  lkb_id; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*) ; 
 int FUNC4 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ls*,char*,int /*<<< orphan*/ ,scalar_t__,unsigned long long,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_rsb*) ; 
 int FUNC9 (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_rsb*) ; 
 int FUNC14 (struct dlm_lkb*,struct dlm_message*) ; 

__attribute__((used)) static int FUNC15(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error, reply = 1;

	error = FUNC4(ls, ms->m_remid, &lkb);
	if (error)
		goto fail;

	if (lkb->lkb_remid != ms->m_lkid) {
		FUNC7(ls, "receive_convert %x remid %x recover_seq %llu "
			  "remote %d %x", lkb->lkb_id, lkb->lkb_remid,
			  (unsigned long long)lkb->lkb_recover_seq,
			  ms->m_header.h_nodeid, ms->m_lkid);
		error = -ENOENT;
		FUNC0(lkb);
		goto fail;
	}

	r = lkb->lkb_resource;

	FUNC5(r);
	FUNC6(r);

	error = FUNC14(lkb, ms);
	if (error)
		goto out;

	FUNC10(lkb, ms);

	error = FUNC9(ls, lkb, ms);
	if (error) {
		FUNC11(r, lkb, error);
		goto out;
	}

	reply = !FUNC3(lkb);

	error = FUNC1(r, lkb);
	if (reply)
		FUNC11(r, lkb, error);
	FUNC2(r, lkb, error);
 out:
	FUNC13(r);
	FUNC8(r);
	FUNC0(lkb);
	return 0;

 fail:
	FUNC12(ls, ms);
	FUNC11(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
	return error;
}