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
struct dlm_ls {int ls_uevent_result; int /*<<< orphan*/  ls_flags; int /*<<< orphan*/  ls_uevent_wait; int /*<<< orphan*/  ls_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_OFFLINE ; 
 int /*<<< orphan*/  KOBJ_ONLINE ; 
 int /*<<< orphan*/  LSFL_UEVENT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dlm_ls *ls, int in)
{
	int error;

	if (in)
		FUNC0(&ls->ls_kobj, KOBJ_ONLINE);
	else
		FUNC0(&ls->ls_kobj, KOBJ_OFFLINE);

	FUNC2(ls, "%s the lockspace group...", in ? "joining" : "leaving");

	/* dlm_controld will see the uevent, do the necessary group management
	   and then write to sysfs to wake us */

	error = FUNC4(ls->ls_uevent_wait,
			FUNC3(LSFL_UEVENT_WAIT, &ls->ls_flags));

	FUNC2(ls, "group event done %d %d", error, ls->ls_uevent_result);

	if (error)
		goto out;

	error = ls->ls_uevent_result;
 out:
	if (error)
		FUNC1(ls, "group %s failed %d %d", in ? "join" : "leave",
			  error, ls->ls_uevent_result);
	return error;
}