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
struct dlm_ls {int /*<<< orphan*/  ls_rcom_spin; int /*<<< orphan*/  ls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_RCOM_READY ; 
 int /*<<< orphan*/  LSFL_RCOM_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dlm_ls *ls)
{
	FUNC1(&ls->ls_rcom_spin);
	FUNC0(LSFL_RCOM_WAIT, &ls->ls_flags);
	FUNC0(LSFL_RCOM_READY, &ls->ls_flags);
	FUNC2(&ls->ls_rcom_spin);
}