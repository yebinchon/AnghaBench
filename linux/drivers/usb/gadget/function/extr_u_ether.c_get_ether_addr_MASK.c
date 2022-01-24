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
typedef  unsigned char u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 

__attribute__((used)) static int FUNC3(const char *str, u8 *dev_addr)
{
	if (str) {
		unsigned	i;

		for (i = 0; i < 6; i++) {
			unsigned char num;

			if ((*str == '.') || (*str == ':'))
				str++;
			num = FUNC1(*str++) << 4;
			num |= FUNC1(*str++);
			dev_addr [i] = num;
		}
		if (FUNC2(dev_addr))
			return 0;
	}
	FUNC0(dev_addr);
	return 1;
}