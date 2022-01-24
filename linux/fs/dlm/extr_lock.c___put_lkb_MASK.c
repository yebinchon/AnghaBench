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
typedef  int /*<<< orphan*/  uint32_t ;
struct dlm_ls {int /*<<< orphan*/  ls_lkbidr_spin; int /*<<< orphan*/  ls_lkbidr; } ;
struct dlm_lkb {scalar_t__ lkb_lvbptr; int /*<<< orphan*/  lkb_ref; int /*<<< orphan*/  lkb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  kill_lkb ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
	uint32_t lkid = lkb->lkb_id;

	FUNC6(&ls->ls_lkbidr_spin);
	if (FUNC5(&lkb->lkb_ref, kill_lkb)) {
		FUNC3(&ls->ls_lkbidr, lkid);
		FUNC7(&ls->ls_lkbidr_spin);

		FUNC0(lkb);

		/* for local/process lkbs, lvbptr points to caller's lksb */
		if (lkb->lkb_lvbptr && FUNC4(lkb))
			FUNC2(lkb->lkb_lvbptr);
		FUNC1(lkb);
		return 1;
	} else {
		FUNC7(&ls->ls_lkbidr_spin);
		return 0;
	}
}