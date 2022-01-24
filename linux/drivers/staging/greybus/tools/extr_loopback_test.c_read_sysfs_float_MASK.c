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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 float FUNC2 (int,char const*,char const*) ; 

float FUNC3(const char *sys_pfx, const char *node)
{
	int fd;
	float val;

	fd = FUNC1(sys_pfx, node, O_RDONLY);
	val = FUNC2(fd, sys_pfx, node);
	FUNC0(fd);
	return val;
}