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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 unsigned int BITS_PER_BYTE ; 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned long *map, unsigned int start, int len)
{
	u8 *p = ((u8 *)map) + FUNC2(start);
	const unsigned int size = start + len;
	int bits_to_set = BITS_PER_BYTE - (start % BITS_PER_BYTE);
	u8 mask_to_set = FUNC0(start);

	while (len - bits_to_set >= 0) {
		*p |= mask_to_set;
		len -= bits_to_set;
		bits_to_set = BITS_PER_BYTE;
		mask_to_set = ~0;
		p++;
	}
	if (len) {
		mask_to_set &= FUNC1(size);
		*p |= mask_to_set;
	}
}