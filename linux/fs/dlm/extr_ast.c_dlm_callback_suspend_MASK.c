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
struct dlm_ls {scalar_t__ ls_callback_wq; int /*<<< orphan*/  ls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_CB_DELAY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct dlm_ls *ls)
{
	FUNC1(LSFL_CB_DELAY, &ls->ls_flags);

	if (ls->ls_callback_wq)
		FUNC0(ls->ls_callback_wq);
}