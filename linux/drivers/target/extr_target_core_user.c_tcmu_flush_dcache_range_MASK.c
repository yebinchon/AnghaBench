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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 size_t FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static inline void FUNC4(void *vaddr, size_t size)
{
	unsigned long offset = FUNC1(vaddr);
	void *start = vaddr - offset;

	size = FUNC2(size+offset, PAGE_SIZE);

	while (size) {
		FUNC0(FUNC3(start));
		start += PAGE_SIZE;
		size -= PAGE_SIZE;
	}
}