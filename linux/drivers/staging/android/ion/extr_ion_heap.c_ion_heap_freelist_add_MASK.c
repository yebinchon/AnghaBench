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
struct ion_heap {int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  free_lock; int /*<<< orphan*/  free_list_size; int /*<<< orphan*/  free_list; } ;
struct ion_buffer {scalar_t__ size; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ion_heap *heap, struct ion_buffer *buffer)
{
	FUNC1(&heap->free_lock);
	FUNC0(&buffer->list, &heap->free_list);
	heap->free_list_size += buffer->size;
	FUNC2(&heap->free_lock);
	FUNC3(&heap->waitqueue);
}