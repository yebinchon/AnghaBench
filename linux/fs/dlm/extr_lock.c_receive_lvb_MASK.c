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
struct dlm_message {int /*<<< orphan*/  m_extra; } ;
struct dlm_ls {int ls_lvblen; } ;
struct dlm_lkb {int lkb_exflags; scalar_t__ lkb_lvbptr; } ;

/* Variables and functions */
 int DLM_LKF_VALBLK ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct dlm_message*) ; 

__attribute__((used)) static int FUNC3(struct dlm_ls *ls, struct dlm_lkb *lkb,
		       struct dlm_message *ms)
{
	int len;

	if (lkb->lkb_exflags & DLM_LKF_VALBLK) {
		if (!lkb->lkb_lvbptr)
			lkb->lkb_lvbptr = FUNC0(ls);
		if (!lkb->lkb_lvbptr)
			return -ENOMEM;
		len = FUNC2(ms);
		if (len > ls->ls_lvblen)
			len = ls->ls_lvblen;
		FUNC1(lkb->lkb_lvbptr, ms->m_extra, len);
	}
	return 0;
}