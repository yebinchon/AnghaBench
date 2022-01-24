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
struct dlm_rsb {int /*<<< orphan*/  res_name; int /*<<< orphan*/  res_dir_nodeid; struct dlm_ls* res_ls; } ;
struct dlm_ls {int /*<<< orphan*/  ls_remove_spin; scalar_t__ ls_remove_len; int /*<<< orphan*/  ls_remove_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dlm_rsb *r)
{
	struct dlm_ls *ls = r->res_ls;
 restart:
	FUNC3(&ls->ls_remove_spin);
	if (ls->ls_remove_len &&
	    !FUNC2(r, ls->ls_remove_name, ls->ls_remove_len)) {
		FUNC0(ls, "delay lookup for remove dir %d %s",
		  	  r->res_dir_nodeid, r->res_name);
		FUNC4(&ls->ls_remove_spin);
		FUNC1(1);
		goto restart;
	}
	FUNC4(&ls->ls_remove_spin);
}