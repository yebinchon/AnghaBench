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
struct dlm_ls {int /*<<< orphan*/  ls_lkbidr_spin; int /*<<< orphan*/  ls_lkbidr; } ;
struct dlm_lkb {int lkb_nodeid; int lkb_id; int /*<<< orphan*/  lkb_cb_work; int /*<<< orphan*/  lkb_cb_mutex; int /*<<< orphan*/  lkb_cb_list; int /*<<< orphan*/  lkb_time_list; int /*<<< orphan*/  lkb_rsb_lookup; int /*<<< orphan*/  lkb_ownqueue; int /*<<< orphan*/  lkb_ref; int /*<<< orphan*/  lkb_grmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_IV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dlm_lkb* FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  dlm_callback_work ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct dlm_lkb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ls*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dlm_ls *ls, struct dlm_lkb **lkb_ret)
{
	struct dlm_lkb *lkb;
	int rv;

	lkb = FUNC2(ls);
	if (!lkb)
		return -ENOMEM;

	lkb->lkb_nodeid = -1;
	lkb->lkb_grmode = DLM_LOCK_IV;
	FUNC7(&lkb->lkb_ref);
	FUNC0(&lkb->lkb_ownqueue);
	FUNC0(&lkb->lkb_rsb_lookup);
	FUNC0(&lkb->lkb_time_list);
	FUNC0(&lkb->lkb_cb_list);
	FUNC9(&lkb->lkb_cb_mutex);
	FUNC1(&lkb->lkb_cb_work, dlm_callback_work);

	FUNC5(GFP_NOFS);
	FUNC10(&ls->ls_lkbidr_spin);
	rv = FUNC4(&ls->ls_lkbidr, lkb, 1, 0, GFP_NOWAIT);
	if (rv >= 0)
		lkb->lkb_id = rv;
	FUNC11(&ls->ls_lkbidr_spin);
	FUNC6();

	if (rv < 0) {
		FUNC8(ls, "create_lkb idr error %d", rv);
		FUNC3(lkb);
		return rv;
	}

	*lkb_ret = lkb;
	return 0;
}