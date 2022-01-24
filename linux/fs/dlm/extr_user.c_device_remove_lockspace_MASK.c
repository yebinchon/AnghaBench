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
struct dlm_lspace_params {int flags; int /*<<< orphan*/  minor; } ;
struct dlm_ls {int /*<<< orphan*/ * ls_local_handle; } ;
typedef  int /*<<< orphan*/  dlm_lockspace_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int DLM_USER_LSFLG_FORCEFREE ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dlm_ls* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct dlm_lspace_params *params)
{
	dlm_lockspace_t *lockspace;
	struct dlm_ls *ls;
	int error, force = 0;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	ls = FUNC1(params->minor);
	if (!ls)
		return -ENOENT;

	if (params->flags & DLM_USER_LSFLG_FORCEFREE)
		force = 2;

	lockspace = ls->ls_local_handle;
	FUNC2(ls);

	/* The final dlm_release_lockspace waits for references to go to
	   zero, so all processes will need to close their device for the
	   ls before the release will proceed.  release also calls the
	   device_deregister above.  Converting a positive return value
	   from release to zero means that userspace won't know when its
	   release was the final one, but it shouldn't need to know. */

	error = FUNC3(lockspace, force);
	if (error > 0)
		error = 0;
	return error;
}