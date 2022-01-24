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
struct dlm_lkb {scalar_t__ lkb_remid; struct dlm_rsb* lkb_resource; int /*<<< orphan*/  lkb_id; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int FUNC3 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_lkb*,struct dlm_message*) ; 
 int FUNC9 (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_rsb*) ; 
 int FUNC13 (struct dlm_lkb*,struct dlm_message*) ; 

__attribute__((used)) static int FUNC14(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error;

	error = FUNC3(ls, ms->m_remid, &lkb);
	if (error)
		goto fail;

	if (lkb->lkb_remid != ms->m_lkid) {
		FUNC6(ls, "receive_unlock %x remid %x remote %d %x",
			  lkb->lkb_id, lkb->lkb_remid,
			  ms->m_header.h_nodeid, ms->m_lkid);
		error = -ENOENT;
		FUNC0(lkb);
		goto fail;
	}

	r = lkb->lkb_resource;

	FUNC4(r);
	FUNC5(r);

	error = FUNC13(lkb, ms);
	if (error)
		goto out;

	FUNC8(lkb, ms);

	error = FUNC9(ls, lkb, ms);
	if (error) {
		FUNC10(r, lkb, error);
		goto out;
	}

	error = FUNC1(r, lkb);
	FUNC10(r, lkb, error);
	FUNC2(r, lkb, error);
 out:
	FUNC12(r);
	FUNC7(r);
	FUNC0(lkb);
	return 0;

 fail:
	FUNC11(ls, ms);
	FUNC10(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
	return error;
}