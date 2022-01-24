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
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *str, unsigned long *bitmap, int bits)
{
	int a, i, z;
	char *np, sign;

	/* bits needs to be a multiple of 8 */
	if (bits & 0x07)
		return -EINVAL;

	while (*str) {
		sign = *str++;
		if (sign != '+' && sign != '-')
			return -EINVAL;
		a = z = FUNC2(str, &np, 0);
		if (str == np || a >= bits)
			return -EINVAL;
		str = np;
		if (*str == '-') {
			z = FUNC2(++str, &np, 0);
			if (str == np || a > z || z >= bits)
				return -EINVAL;
			str = np;
		}
		for (i = a; i <= z; i++)
			if (sign == '+')
				FUNC1(i, bitmap);
			else
				FUNC0(i, bitmap);
		while (*str == ',' || *str == '\n')
			str++;
	}

	return 0;
}