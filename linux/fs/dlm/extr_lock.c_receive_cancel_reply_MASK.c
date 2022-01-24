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
struct dlm_message {int /*<<< orphan*/  m_remid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int FUNC2 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 

__attribute__((used)) static int FUNC3(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	int error;

	error = FUNC2(ls, ms->m_remid, &lkb);
	if (error)
		return error;

	FUNC0(lkb, ms);
	FUNC1(lkb);
	return 0;
}