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
struct ion_heap {int flags; } ;
struct ion_buffer {struct ion_heap* heap; } ;

/* Variables and functions */
 int ION_HEAP_FLAG_DEFER_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct ion_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct ion_heap*,struct ion_buffer*) ; 

__attribute__((used)) static void FUNC2(struct ion_buffer *buffer)
{
	struct ion_heap *heap = buffer->heap;

	if (heap->flags & ION_HEAP_FLAG_DEFER_FREE)
		FUNC1(heap, buffer);
	else
		FUNC0(buffer);
}