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
 int /*<<< orphan*/  ENOMEM ; 
 char** FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_NOIO ; 
 int __GFP_HIGH ; 
 unsigned int FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,unsigned int) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static char **FUNC6(char *strings, unsigned int len, unsigned int *num)
{
	char *p, **ret;

	/* Count the strings. */
	*num = FUNC1(strings, len);

	/* Transfer to one big alloc for easy freeing. */
	ret = FUNC3(*num * sizeof(char *) + len, GFP_NOIO | __GFP_HIGH);
	if (!ret) {
		FUNC2(strings);
		return FUNC0(-ENOMEM);
	}
	FUNC4(&ret[*num], strings, len);
	FUNC2(strings);

	strings = (char *)&ret[*num];
	for (p = strings, *num = 0; p < strings + len; p += FUNC5(p) + 1)
		ret[(*num)++] = p;

	return ret;
}