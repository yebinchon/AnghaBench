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
struct dlm_ls {int /*<<< orphan*/  ls_callback_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int WQ_HIGHPRI ; 
 int WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct dlm_ls *ls)
{
	ls->ls_callback_wq = FUNC0("dlm_callback",
					     WQ_HIGHPRI | WQ_MEM_RECLAIM, 0);
	if (!ls->ls_callback_wq) {
		FUNC1("can't start dlm_callback workqueue");
		return -ENOMEM;
	}
	return 0;
}