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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SYSFS_MAX_INT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int fd, const char *sys_pfx, const char *node)
{
	char buf[SYSFS_MAX_INT];

	if (FUNC4(fd, buf, sizeof(buf)) < 0) {
		FUNC3(stderr, "unable to read from %s%s %d\n", sys_pfx, node,
			FUNC5(errno));
		FUNC2(fd);
		FUNC0();
	}
	return FUNC1(buf);
}