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
 int /*<<< orphan*/  FUNC0 (unsigned long,char*) ; 
 unsigned long FUNC1 (char*,char**) ; 
 void* FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int FUNC3(const char *param, int max_entries,
		unsigned long *sizes, unsigned long *paddrs)
{
	unsigned int fbnum;
	unsigned long size;
	unsigned long paddr = 0;
	char *p, *start;

	start = (char *)param;

	while (1) {
		p = start;

		fbnum = FUNC2(p, &p, 10);

		if (p == start)
			return -EINVAL;

		if (*p != ':')
			return -EINVAL;

		if (fbnum >= max_entries)
			return -EINVAL;

		size = FUNC1(p + 1, &p);

		if (!size)
			return -EINVAL;

		paddr = 0;

		if (*p == '@') {
			paddr = FUNC2(p + 1, &p, 16);

			if (!paddr)
				return -EINVAL;

		}

		FUNC0(paddr,
			"reserving memory at predefined address not supported\n");

		paddrs[fbnum] = paddr;
		sizes[fbnum] = size;

		if (*p == 0)
			break;

		if (*p != ',')
			return -EINVAL;

		++p;

		start = p;
	}

	return 0;
}