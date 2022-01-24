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
 int FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int) ; 

__attribute__((used)) static int FUNC2(unsigned short base, char *buffer, int len)
{
	for (; len; len--) {
		unsigned char h;

		FUNC1(base, 0x4);
		h = FUNC0(base) & 0xf0;
		FUNC1(base, 0x6);
		*buffer++ = h | ((FUNC0(base) & 0xf0) >> 4);
	}
	return 1;		/* All went well - we hope! */
}