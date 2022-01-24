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
 int /*<<< orphan*/  F_OK ; 
 int MAX_SYSFS_PATH ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char const*) ; 

int FUNC2(const char *path, const char *node)
{
	char file[MAX_SYSFS_PATH];

	FUNC1(file, MAX_SYSFS_PATH, "%s%s/iteration_count", path, node);
	if (FUNC0(file, F_OK) == 0)
		return 1;
	return 0;
}