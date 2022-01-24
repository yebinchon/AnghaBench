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
 int EINVAL ; 
 unsigned long FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *buf,
		unsigned long max, unsigned long *value)
{
	char *endp;

	*value = FUNC0(FUNC1(buf), &endp, 0);
	endp = FUNC1(endp);
	if (*endp || *value > max)
		return -EINVAL;

	return 0;
}