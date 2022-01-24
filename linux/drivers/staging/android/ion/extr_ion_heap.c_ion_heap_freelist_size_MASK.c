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
struct ion_heap {size_t free_list_size; int /*<<< orphan*/  free_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(struct ion_heap *heap)
{
	size_t size;

	FUNC0(&heap->free_lock);
	size = heap->free_list_size;
	FUNC1(&heap->free_lock);

	return size;
}