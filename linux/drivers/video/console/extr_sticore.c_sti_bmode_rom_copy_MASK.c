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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned long base, unsigned long count,
			       void *dest)
{
	unsigned long dest_start = (unsigned long) dest;

	while (count) {
		count--;
		*(u8 *)dest = FUNC0(base);
		base += 4;
		dest++;
	}

	FUNC1(dest_start, (unsigned long)dest);
}