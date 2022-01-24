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
struct dlm_rsb {int res_nodeid; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_message {int dummy; } ;
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_lkb*,int,int) ; 
 int FUNC1 (struct dlm_rsb*,struct dlm_lkb*,int,int,struct dlm_message**,struct dlm_mhandle**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ; 
 int FUNC5 (struct dlm_mhandle*,struct dlm_message*) ; 

__attribute__((used)) static int FUNC6(struct dlm_rsb *r, struct dlm_lkb *lkb, int mstype)
{
	struct dlm_message *ms;
	struct dlm_mhandle *mh;
	int to_nodeid, error;

	to_nodeid = r->res_nodeid;

	error = FUNC0(lkb, mstype, to_nodeid);
	if (error)
		return error;

	error = FUNC1(r, lkb, to_nodeid, mstype, &ms, &mh);
	if (error)
		goto fail;

	FUNC4(r, lkb, ms);

	error = FUNC5(mh, ms);
	if (error)
		goto fail;
	return 0;

 fail:
	FUNC3(lkb, FUNC2(mstype));
	return error;
}