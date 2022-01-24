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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chipset_driverinfo ; 
 int /*<<< orphan*/  clientbus_driverinfo ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int initialized ; 
 int /*<<< orphan*/  visorbus_debugfs_dir ; 
 int /*<<< orphan*/  visorbus_type ; 

int FUNC3(void)
{
	int err;

	visorbus_debugfs_dir = FUNC2("visorbus", NULL);
	FUNC0(&clientbus_driverinfo, "clientbus", "visorbus");
	err = FUNC1(&visorbus_type);
	if (err < 0)
		return err;
	initialized = true;
	FUNC0(&chipset_driverinfo, "chipset", "visorchipset");
	return 0;
}