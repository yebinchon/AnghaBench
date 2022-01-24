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
struct dlm_rsb {int /*<<< orphan*/  res_hashchain; } ;
struct dlm_ls {int ls_new_rsb_count; int /*<<< orphan*/  ls_new_rsb_spin; int /*<<< orphan*/  ls_new_rsb; } ;
struct TYPE_2__ {int ci_new_rsb_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dlm_rsb* FUNC0 (struct dlm_ls*) ; 
 TYPE_1__ dlm_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dlm_ls *ls)
{
	struct dlm_rsb *r1, *r2;
	int count = 0;

	FUNC2(&ls->ls_new_rsb_spin);
	if (ls->ls_new_rsb_count > dlm_config.ci_new_rsb_count / 2) {
		FUNC3(&ls->ls_new_rsb_spin);
		return 0;
	}
	FUNC3(&ls->ls_new_rsb_spin);

	r1 = FUNC0(ls);
	r2 = FUNC0(ls);

	FUNC2(&ls->ls_new_rsb_spin);
	if (r1) {
		FUNC1(&r1->res_hashchain, &ls->ls_new_rsb);
		ls->ls_new_rsb_count++;
	}
	if (r2) {
		FUNC1(&r2->res_hashchain, &ls->ls_new_rsb);
		ls->ls_new_rsb_count++;
	}
	count = ls->ls_new_rsb_count;
	FUNC3(&ls->ls_new_rsb_spin);

	if (!count)
		return -ENOMEM;
	return 0;
}