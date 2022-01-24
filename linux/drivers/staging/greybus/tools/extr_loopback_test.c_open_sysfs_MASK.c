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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int MAX_SYSFS_PATH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(const char *sys_pfx, const char *node, int flags)
{
	int fd;
	char path[MAX_SYSFS_PATH];

	FUNC3(path, sizeof(path), "%s%s", sys_pfx, node);
	fd = FUNC2(path, flags);
	if (fd < 0) {
		FUNC1(stderr, "unable to open %s\n", path);
		FUNC0();
	}
	return fd;
}