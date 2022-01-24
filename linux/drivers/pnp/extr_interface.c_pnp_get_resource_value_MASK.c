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
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *buf,
				    unsigned long type,
				    resource_size_t *start,
				    resource_size_t *end,
				    unsigned long *flags)
{
	if (start)
		*start = 0;
	if (end)
		*end = 0;
	if (flags)
		*flags = 0;

	/* TBD: allow for disabled resources */

	buf = FUNC1(buf);
	if (start) {
		*start = FUNC0(buf, &buf, 0);
		if (end) {
			buf = FUNC1(buf);
			if (*buf == '-') {
				buf = FUNC1(buf + 1);
				*end = FUNC0(buf, &buf, 0);
			} else
				*end = *start;
		}
	}

	/* TBD: allow for additional flags, e.g., IORESOURCE_WINDOW */

	return buf;
}