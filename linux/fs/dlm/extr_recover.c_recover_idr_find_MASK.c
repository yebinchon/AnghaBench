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
typedef  scalar_t__ uint64_t ;
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recover_idr_lock; int /*<<< orphan*/  ls_recover_idr; } ;

/* Variables and functions */
 struct dlm_rsb* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dlm_rsb *FUNC3(struct dlm_ls *ls, uint64_t id)
{
	struct dlm_rsb *r;

	FUNC1(&ls->ls_recover_idr_lock);
	r = FUNC0(&ls->ls_recover_idr, (int)id);
	FUNC2(&ls->ls_recover_idr_lock);
	return r;
}