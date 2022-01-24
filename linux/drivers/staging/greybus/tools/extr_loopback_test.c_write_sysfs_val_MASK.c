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
 int /*<<< orphan*/  O_RDWR ; 
 int SYSFS_MAX_INT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,char*,int) ; 

void FUNC7(const char *sys_pfx, const char *node, int val)
{
	int fd, len;
	char buf[SYSFS_MAX_INT];

	fd = FUNC3(sys_pfx, node, O_RDWR);
	len = FUNC4(buf, sizeof(buf), "%d", val);
	if (FUNC6(fd, buf, len) < 0) {
		FUNC2(stderr, "unable to write to %s%s %d\n", sys_pfx, node,
			FUNC5(errno));
		FUNC1(fd);
		FUNC0();
	}
	FUNC1(fd);
}