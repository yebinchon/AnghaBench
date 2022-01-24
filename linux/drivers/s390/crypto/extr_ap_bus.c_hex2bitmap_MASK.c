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
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC3(const char *str, unsigned long *bitmap, int bits)
{
	int i, n, b;

	/* bits needs to be a multiple of 8 */
	if (bits & 0x07)
		return -EINVAL;

	if (str[0] == '0' && str[1] == 'x')
		str++;
	if (*str == 'x')
		str++;

	for (i = 0; FUNC1(*str) && i < bits; str++) {
		b = FUNC0(*str);
		for (n = 0; n < 4; n++)
			if (b & (0x08 >> n))
				FUNC2(i + n, bitmap);
		i += 4;
	}

	if (*str == '\n')
		str++;
	if (*str)
		return -EINVAL;
	return 0;
}