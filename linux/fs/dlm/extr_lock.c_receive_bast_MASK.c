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
struct dlm_rsb {int dummy; } ;
struct dlm_message {int /*<<< orphan*/  m_bastmode; int /*<<< orphan*/  m_remid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_highbast; struct dlm_rsb* lkb_resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*) ; 
 int FUNC7 (struct dlm_lkb*,struct dlm_message*) ; 

__attribute__((used)) static int FUNC8(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error;

	error = FUNC1(ls, ms->m_remid, &lkb);
	if (error)
		return error;

	r = lkb->lkb_resource;

	FUNC2(r);
	FUNC3(r);

	error = FUNC7(lkb, ms);
	if (error)
		goto out;

	FUNC5(r, lkb, ms->m_bastmode);
	lkb->lkb_highbast = ms->m_bastmode;
 out:
	FUNC6(r);
	FUNC4(r);
	FUNC0(lkb);
	return 0;
}