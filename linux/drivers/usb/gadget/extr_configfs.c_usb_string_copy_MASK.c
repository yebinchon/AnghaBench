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
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *s, char **s_copy)
{
	int ret;
	char *str;
	char *copy = *s_copy;
	ret = FUNC2(s);
	if (ret > 126)
		return -EOVERFLOW;

	str = FUNC1(s, GFP_KERNEL);
	if (!str)
		return -ENOMEM;
	if (str[ret - 1] == '\n')
		str[ret - 1] = '\0';
	FUNC0(copy);
	*s_copy = str;
	return 0;
}