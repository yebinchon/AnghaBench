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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct dlm_ls {int /*<<< orphan*/  ls_callback_wq; int /*<<< orphan*/  ls_cb_mutex; int /*<<< orphan*/  ls_cb_delay; int /*<<< orphan*/  ls_flags; } ;
struct dlm_lkb {int lkb_flags; int /*<<< orphan*/  lkb_cb_mutex; int /*<<< orphan*/  lkb_cb_work; int /*<<< orphan*/  lkb_cb_list; int /*<<< orphan*/  lkb_ref; TYPE_2__* lkb_callbacks; TYPE_1__* lkb_resource; } ;
struct TYPE_4__ {scalar_t__ seq; } ;
struct TYPE_3__ {struct dlm_ls* res_ls; } ;

/* Variables and functions */
 int DLM_IFL_USER ; 
 int /*<<< orphan*/  LSFL_CB_DELAY ; 
 int FUNC0 (struct dlm_lkb*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ dlm_cb_seq ; 
 int /*<<< orphan*/  dlm_cb_seq_spin ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct dlm_lkb *lkb, uint32_t flags, int mode, int status,
		uint32_t sbflags)
{
	struct dlm_ls *ls = lkb->lkb_resource->res_ls;
	uint64_t new_seq, prev_seq;
	int rv;

	FUNC7(&dlm_cb_seq_spin);
	new_seq = ++dlm_cb_seq;
	if (!dlm_cb_seq)
		new_seq = ++dlm_cb_seq;
	FUNC8(&dlm_cb_seq_spin);

	if (lkb->lkb_flags & DLM_IFL_USER) {
		FUNC1(lkb, flags, mode, status, sbflags, new_seq);
		return;
	}

	FUNC4(&lkb->lkb_cb_mutex);
	prev_seq = lkb->lkb_callbacks[0].seq;

	rv = FUNC0(lkb, flags, mode, status, sbflags, new_seq);
	if (rv < 0)
		goto out;

	if (!prev_seq) {
		FUNC2(&lkb->lkb_ref);

		if (FUNC9(LSFL_CB_DELAY, &ls->ls_flags)) {
			FUNC4(&ls->ls_cb_mutex);
			FUNC3(&lkb->lkb_cb_list, &ls->ls_cb_delay);
			FUNC5(&ls->ls_cb_mutex);
		} else {
			FUNC6(ls->ls_callback_wq, &lkb->lkb_cb_work);
		}
	}
 out:
	FUNC5(&lkb->lkb_cb_mutex);
}