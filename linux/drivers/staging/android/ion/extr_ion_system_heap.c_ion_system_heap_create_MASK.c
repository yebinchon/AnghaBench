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
struct ion_heap {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ion_heap*) ; 
 int FUNC1 (struct ion_heap*) ; 
 struct ion_heap* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ion_heap*) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct ion_heap *heap;

	heap = FUNC2();
	if (FUNC0(heap))
		return FUNC1(heap);
	heap->name = "ion_system_heap";

	FUNC3(heap);

	return 0;
}