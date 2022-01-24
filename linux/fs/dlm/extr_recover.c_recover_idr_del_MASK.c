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
struct dlm_rsb {scalar_t__ res_id; struct dlm_ls* res_ls; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recover_idr_lock; int /*<<< orphan*/  ls_recover_list_count; int /*<<< orphan*/  ls_recover_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dlm_rsb *r)
{
	struct dlm_ls *ls = r->res_ls;

	FUNC2(&ls->ls_recover_idr_lock);
	FUNC1(&ls->ls_recover_idr, r->res_id);
	r->res_id = 0;
	ls->ls_recover_list_count--;
	FUNC3(&ls->ls_recover_idr_lock);

	FUNC0(r);
}