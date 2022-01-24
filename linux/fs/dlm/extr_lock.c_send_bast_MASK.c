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
struct dlm_mhandle {int dummy; } ;
struct dlm_message {int m_bastmode; } ;
struct dlm_lkb {int lkb_nodeid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_MSG_BAST ; 
 int FUNC0 (struct dlm_rsb*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct dlm_message**,struct dlm_mhandle**) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ; 
 int FUNC2 (struct dlm_mhandle*,struct dlm_message*) ; 

__attribute__((used)) static int FUNC3(struct dlm_rsb *r, struct dlm_lkb *lkb, int mode)
{
	struct dlm_message *ms;
	struct dlm_mhandle *mh;
	int to_nodeid, error;

	to_nodeid = lkb->lkb_nodeid;

	error = FUNC0(r, NULL, to_nodeid, DLM_MSG_BAST, &ms, &mh);
	if (error)
		goto out;

	FUNC1(r, lkb, ms);

	ms->m_bastmode = mode;

	error = FUNC2(mh, ms);
 out:
	return error;
}