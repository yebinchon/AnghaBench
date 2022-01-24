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
struct dlm_lkb {int /*<<< orphan*/  lkb_ref; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dlm_lkb* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dlm_ls *ls, uint32_t lkid, struct dlm_lkb **lkb_ret)
{
	struct dlm_lkb *lkb;

	FUNC2(&ls->ls_lkbidr_spin);
	lkb = FUNC0(&ls->ls_lkbidr, lkid);
	if (lkb)
		FUNC1(&lkb->lkb_ref);
	FUNC3(&ls->ls_lkbidr_spin);

	*lkb_ret = lkb;
	return lkb ? 0 : -ENOENT;
}