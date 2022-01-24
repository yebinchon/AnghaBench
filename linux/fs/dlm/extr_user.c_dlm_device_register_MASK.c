#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  minor; int /*<<< orphan*/ * fops; } ;
struct dlm_ls {TYPE_1__ ls_device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  device_fops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 char* name_prefix ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct dlm_ls *ls, char *name)
{
	int error, len;

	/* The device is already registered.  This happens when the
	   lockspace is created multiple times from userspace. */
	if (ls->ls_device.name)
		return 0;

	error = -ENOMEM;
	len = FUNC4(name) + FUNC4(name_prefix) + 2;
	ls->ls_device.name = FUNC1(len, GFP_NOFS);
	if (!ls->ls_device.name)
		goto fail;

	FUNC3((char *)ls->ls_device.name, len, "%s_%s", name_prefix,
		 name);
	ls->ls_device.fops = &device_fops;
	ls->ls_device.minor = MISC_DYNAMIC_MINOR;

	error = FUNC2(&ls->ls_device);
	if (error) {
		FUNC0(ls->ls_device.name);
		/* this has to be set to NULL
		 * to avoid a double-free in dlm_device_deregister
		 */
		ls->ls_device.name = NULL;
	}
fail:
	return error;
}